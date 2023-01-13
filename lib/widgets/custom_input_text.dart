import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  const CustomInputText(
      {Key? key,
      this.hintText,
      this.labelText,
      this.helperText,
      this.counterText,
      this.icon,
      this.suffixIcon,
      this.prefixIcon,
      this.keyboardType,
      this.obscureText = false,
      required this.formProperty,
      required this.formValues})
      : super(key: key);

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? icon;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, dynamic> formValues;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      keyboardType: keyboardType,
      initialValue: null,
      textCapitalization: TextCapitalization.words,
      obscureText: obscureText,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return 'Field required!';
        return value.length < 10 ? 'Minimo 10 letras ' : null;
      },
      autovalidateMode: AutovalidateMode
          .onUserInteraction, // ! Normalmente esta al nivel del formulario
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
