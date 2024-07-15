import 'package:fitmetrics/src/core/constants/constants.dart';
import 'package:fitmetrics/src/features/shared/widgets/buttons/button_filled_primary_async.dart';
import 'package:flutter/foundation.dart';
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
    debugPrint(_formKey.currentState?.value.toString());
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      initialValue: const {
        'email': 'a@a.fr',
        'password': '12345678',
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
            child: const Text(AppStrings.signIn),
          ),
        ],
      ),
    );
  }
}
