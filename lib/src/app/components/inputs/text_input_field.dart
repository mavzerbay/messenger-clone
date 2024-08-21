import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class TextInputField extends StatelessWidget {
  final String formControlName;
  final String? labelText;
  final Function(FormControl<dynamic>)? onChanged;
  final Function(FormControl<dynamic>)? onSubmitted;
  final String? errorText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool autoFocus;
  final bool obscureText;
  final Widget? suffixIcon;
  const TextInputField({
    required this.formControlName,
    this.labelText,
    this.onChanged,
    this.onSubmitted,
    this.errorText,
    this.keyboardType,
    this.textInputAction,
    this.autoFocus = false,
    this.obscureText = false,
    this.suffixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      formControlName: formControlName,
      autofocus: autoFocus,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        errorText: errorText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        suffixIcon: suffixIcon,
      ),
      validationMessages: {
        ValidationMessage.required: (e) =>
            'The ${labelText ?? 'field'} is required',
        ValidationMessage.minLength: (e) =>
            'The ${labelText ?? 'field'} must be at least ${(e as Map)['requiredLength']} characters',
        ValidationMessage.maxLength: (e) =>
            'The ${labelText ?? 'field'} must be at most ${(e as Map)['requiredLength']} characters',
      },
    );
  }
}
