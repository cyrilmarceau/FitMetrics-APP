import 'package:fitmetrics/src/core/constants/constants.dart';
import 'package:fitmetrics/src/core/extension/async_ui_extension.dart';
import 'package:fitmetrics/src/features/authentication/data/models/login_model.dart';
import 'package:fitmetrics/src/features/authentication/presentation/screens/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> onLogin() async {
    _formKey.currentState?.saveAndValidate();
    final email = _formKey.currentState?.fields['email']?.value as String;
    final password = _formKey.currentState?.fields['password']?.value as String;

    ref.read(loginControllerProvider.notifier).login(request: LoginModel(email: email, password: password));
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
          FormBuilderTextField(
            name: 'email',
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(errorText: AppStrings.requiredField),
              FormBuilderValidators.email(),
            ]),
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
          ),
          gapH20,
          FormBuilderTextField(
            name: 'password',
            validator: FormBuilderValidators.required(errorText: AppStrings.requiredField),
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Mot de passe',
            ),
          ),
          gapH32,
          FilledButton(
            onPressed: onLogin,
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: Text(
              AppStrings.signIn,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
