import 'package:fitmetrics/src/core/constants/constants.dart';
import 'package:fitmetrics/src/core/extension/async_ui_extension.dart';
import 'package:fitmetrics/src/features/authentication/data/models/login_request_model.dart';
import 'package:fitmetrics/src/features/authentication/presentation/screens/login/login_controller.dart';
import 'package:fitmetrics/src/features/authentication/presentation/screens/signup/signup_controller.dart';
import 'package:fitmetrics/src/features/shared/widgets/circular_indicator.dart';
import 'package:fitmetrics/src/features/shared/widgets/form/form_password_field.dart';
import 'package:fitmetrics/src/features/shared/widgets/form/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  Future<void> _onLogin() async {
    _formKey.currentState?.saveAndValidate();
    final email = _formKey.currentState?.fields['email']?.value as String;
    final password = _formKey.currentState?.fields['password']?.value as String;

    ref.read(loginControllerProvider.notifier).login(request: LoginRequest(email: email, password: password));
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(loginControllerProvider, (_, state) => state.showSnackBarOnErrorOrSuccess(context));

    return FormBuilder(
      initialValue: const {
        'email': 'a@a.fr',
        'password': '123456789',
      },
      key: _formKey,
      child: Column(
        children: [
          const FormTextField(name: 'email', hintText: 'email'),
          gapH20,
          const FormPasswordField(name: 'password', hintText: 'Mot de passe'),
          gapH32,
          Consumer(
            builder: (context, ref, child) {
              final state = ref.watch(loginControllerProvider);
              return FilledButton(
                onPressed: state is AsyncLoading ? null : _onLogin,
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: Center(
                  child: state is AsyncLoading
                      ? const CircularIndicator()
                      : Text(
                          AppStrings.signIn,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
