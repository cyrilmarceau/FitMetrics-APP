import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

/// [FormTextField] is a custom widget that displays a text field with a custom style.
class FormTextField extends StatelessWidget {
  final String name;
  final bool? obscureText;
  final Widget? suffixIcon;
  final String hintText;
  final TextInputType keyboardType;
  final int? maxLines;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  /// Create a callback for onChanged event.
  final void Function(String?)? onChanged;

  const FormTextField({
    super.key,
    required this.name,
    this.obscureText = false,
    this.suffixIcon,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    required this.hintText,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      obscureText: obscureText ?? false,
      obscuringCharacter: String.fromCharCode(0x002A),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      controller: controller,
      maxLines: maxLines,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        suffixIcon: suffixIcon,
        labelText: hintText,
        contentPadding: const EdgeInsets.all(5),
      ),
      keyboardType: keyboardType,
      onChanged: onChanged,
    );
  }
}
