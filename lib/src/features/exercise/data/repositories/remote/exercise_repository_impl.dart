import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fitmetrics/src/core/dio/dio_client.dart';
import 'package:fitmetrics/src/core/error/exceptions.dart';
import 'package:fitmetrics/src/core/mixins/logging_mixin.dart';
import 'package:fitmetrics/src/core/typedef/typedef.dart';
import 'package:fitmetrics/src/features/exercise/data/models/exercise_response_model.dart';
import 'package:fitmetrics/src/features/exercise/data/models/muscle_group_response_model.dart';
import 'package:fitmetrics/src/features/exercise/data/repositories/remote/exercise_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExerciseRepositoryImpl with LoggingMixin implements ExerciseRepository {
  ExerciseRepositoryImpl({
    required this.ref,
  });

  Dio get dio => ref.read(dioProvider);
  final Ref ref;

  @override
  Future<ExerciseResponse> getExercises({required ExerciseQueryData queryData}) async {
    try {
      final payload = await dio.get(
        '/exercises',
        options: Options(extra: <String, bool>{'tokenRequired': true}),
      );

      if (payload.statusCode == HttpStatus.ok) {
        return ExerciseResponse.fromJson(payload.data);
      } else {
        log.e('[ExerciseRepositoryImpl] :: getExercises :: statusCode != HttpStatus.ok :: payload.data.messages => ${payload.data['messages']}');

        throw ExerciseException(
          messages: ExerciseError.fromJson(payload.data['messages']),
          statusCode: payload.statusCode,
        );
      }
    } on DioException catch (e) {
      log.e('[AuthRepositoryImpl] :: login :: DioException => ${e.toString()}');

      throw HttpException(
        statusCode: e.response?.statusCode,
        messages: e.message,
      );
    }
  }

  @override
  Future<MuscleGroupResponse> getMuscleGroup() async {
    try {
      final payload = await dio.get(
        '/muscle-group',
        options: Options(extra: <String, bool>{'tokenRequired': true}),
      );

      if (payload.statusCode == HttpStatus.ok) {
        return MuscleGroupResponse.fromJson(payload.data);
      } else {
        log.e('[ExerciseRepositoryImpl] :: getMuscleGroup :: statusCode != HttpStatus.ok :: payload.data.messages => ${payload.data['messages']}');

        throw MuscleGroupException(
          messages: MuscleGroupError.fromJson(payload.data['messages']),
          statusCode: payload.statusCode,
        );
      }
    } on DioException catch (e) {
      log.e('[AuthRepositoryImpl] :: login :: DioException => ${e.toString()}');

      throw HttpException(
        statusCode: e.response?.statusCode,
        messages: e.message,
      );
    }
  }
}
