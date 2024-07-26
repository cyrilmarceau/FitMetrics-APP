import 'package:fitmetrics/src/features/shared/widgets/form/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

/// [FormPasswordField] is a custom widget that displays a password field with a custom style.
///
/// It is a custom widget that extends [FormTextField] and sets the [obscureText] to true.
///
/// It is used to display a password field with a custom style.
class FormPasswordField extends StatefulWidget {
  final TextEditingController? controller;
  final String name;
  final String hintText;
  final bool? obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  const FormPasswordField({
    super.key,
    this.obscureText = false,
    this.suffixIcon,
    this.validator,
    required this.name,
    this.controller,
    required this.hintText,
  });

  @override
  State<FormPasswordField> createState() => _FormPasswordFieldState();
}

class _FormPasswordFieldState extends State<FormPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: widget.name,
      controller: widget.controller,
      //
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: widget.hintText,
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: Theme.of(context).colorScheme.onSurface,
            size: 20.0,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),

      validator: widget.validator,
    );
  }
}
