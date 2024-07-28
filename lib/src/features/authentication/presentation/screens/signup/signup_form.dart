import 'package:fitmetrics/src/core/constants/constants.dart';
import 'package:fitmetrics/src/core/extension/async_ui_extension.dart';
import 'package:fitmetrics/src/features/authentication/data/models/login_model.dart';
import 'package:fitmetrics/src/features/authentication/data/models/signup_request_model.dart';
import 'package:fitmetrics/src/features/authentication/presentation/screens/login/login_controller.dart';
import 'package:fitmetrics/src/features/authentication/presentation/screens/signup/signup_controller.dart';
import 'package:fitmetrics/src/features/shared/widgets/circular_indicator.dart';
import 'package:fitmetrics/src/features/shared/widgets/form/form_password_field.dart';
import 'package:fitmetrics/src/features/shared/widgets/form/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignupForm extends ConsumerStatefulWidget {
  const SignupForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupFormState();
}

class _SignupFormState extends ConsumerState<SignupForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  Future<void> _onLogin() async {
    _formKey.currentState?.saveAndValidate();
    final firstname = _formKey.currentState?.fields['firstname']?.value as String;
    final lastname = _formKey.currentState?.fields['lastname']?.value as String;
    final email = _formKey.currentState?.fields['email']?.value as String;
    final password = _formKey.currentState?.fields['password']?.value as String;
    final passwordConfirmation = _formKey.currentState?.fields['password_confirmation']?.value as String;

    ref.read(signupControllerProvider.notifier).signup(
          request: SignupRequestModel(
            firstname: firstname,
            lastname: lastname,
            email: email,
            password: password,
            passwordConfirmation: passwordConfirmation,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(loginControllerProvider, (_, state) => state.showSnackBarOnErrorOrSuccess(context));

    return FormBuilder(
      initialValue: const {
        'firstname': 'John',
        'lastname': 'Doe',
        'email': 'john@doe.fr',
        'password': '123456789',
        'password_confirmation': '123456789',
      },
      key: _formKey,
      child: Column(
        children: [
          const FormTextField(name: 'firstname', hintText: 'Prénom'),
          gapH20,
          const FormTextField(name: 'lastname', hintText: 'Nom'),
          gapH20,
          const FormTextField(name: 'email', hintText: 'email'),
          gapH20,
          const FormPasswordField(name: 'password', hintText: 'Mot de passe'),
          gapH20,
          const FormPasswordField(name: 'password_confirmation', hintText: 'Confirmation du mot de passe'),
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
                          AppStrings.signUp,
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
