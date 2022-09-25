import 'package:flutter/material.dart';

class LoginCustomFormFieldWidget extends StatelessWidget {
  const LoginCustomFormFieldWidget({
    Key? key,
    required this.labelText,
    required this.padding,
    required this.maxLength,
    required this.obscureText,
    required this.keyboardType,
    required this.fillColor,
  }) : super(key: key);
  final String labelText;
  final EdgeInsetsGeometry padding;
  final int maxLength;
  final bool obscureText;
  final TextInputType keyboardType;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        obscureText: obscureText,
        maxLength: maxLength,
        style: const TextStyle(
            color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        autocorrect: true,
        keyboardType: keyboardType,
        autofocus: false,
        decoration: InputDecoration(
            fillColor: fillColor,
            border: const OutlineInputBorder(),
            labelText: labelText,
            labelStyle: const TextStyle(
                color: Color.fromARGB(255, 0, 68, 66),
                fontSize: 15,
                fontWeight: FontWeight.w900)),
      ),
    );
  }
}
