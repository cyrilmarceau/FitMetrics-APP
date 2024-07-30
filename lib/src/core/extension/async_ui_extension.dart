import 'package:fitmetrics/src/core/constants/constants.dart';
import 'package:fitmetrics/src/core/error/exceptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:toastification/toastification.dart';

/// Extension on [AsyncValue] to show success or error toast based on the state of the [AsyncValue]

extension AsyncValueUI on AsyncValue<dynamic> {
  static _showSuccess({required BuildContext context, required Widget title, Widget? description}) => toastification.show(
        context: context,
        type: ToastificationType.success,
        style: ToastificationStyle.flatColored,
        title: title,
        description: description,
        alignment: Alignment.topCenter,
        autoCloseDuration: const Duration(seconds: 5),
        borderRadius: BorderRadius.circular(AppSizes.p4),
        boxShadow: highModeShadow,
        dragToClose: true,
        pauseOnHover: false,
        showProgressBar: true,
      );

  static _showError({required BuildContext context, required Widget title, Widget? description}) => toastification.show(
      context: context,
      type: ToastificationType.error,
      style: ToastificationStyle.flatColored,
      title: title,
      description: description,
      alignment: Alignment.topCenter,
      autoCloseDuration: const Duration(seconds: 5),
      borderRadius: BorderRadius.circular(AppSizes.p4),
      boxShadow: highModeShadow,
      dragToClose: true,
      pauseOnHover: false,
      showProgressBar: true);

  void showSnackBarOnErrorOrSuccess(BuildContext context) => whenOrNull(
        error: (error, _) {
          if (isLoading) {
            return;
          }

          final logger = Logger(printer: PrettyPrinter(methodCount: 0));

          logger.e('[AsyncValueUI] :: showSnackBarOnErrorOrSuccess :: error => $error');

          switch (error) {
            // ignore: unused_local_variable
            case HttpException(:final statusCode, :final messages, :final displayMessage):
              _showError(
                context: context,
                title: const Text(AppStrings.anErrorOccurred, style: TextStyle(fontWeight: FontWeight.bold)),
                description: const Text(AppStrings.apiUnreachable),
              );
              break;
            // ignore: unused_local_variable
            case LoginFailedException(:final messages, :final data, :final statusCode):
              _showError(
                context: context,
                title: const Text(AppStrings.anErrorOccurred, style: TextStyle(fontWeight: FontWeight.bold)),
                description: Text(messages.nonFieldErrors?.first ?? ''),
              );
              break;
            // ignore: unused_local_variable
            case SignupFailedException(:final messages, :final data, :final statusCode):
              _showError(
                context: context,
                title: const Text(AppStrings.anErrorOccurred, style: TextStyle(fontWeight: FontWeight.bold)),
                description: Text(messages.email?.first ?? ''),
              );
              break;

            default:
              logger.e('[AsyncValueUI] :: showSnackBarOnErrorOrSuccess :: error => $error');
              _showError(
                context: context,
                title: const Text(AppStrings.anErrorOccurred, style: TextStyle(fontWeight: FontWeight.bold)),
              );
          }
        },
        data: (data) {
          if (isLoading || data == null) return;

          final logger = Logger(printer: PrettyPrinter(methodCount: 0));

          logger.d('✅ [AsyncValueUI] :: showSnackBarOnErrorOrSuccess :: data => $data');

          switch (data) {
            default:
          }
        },
      );
}
