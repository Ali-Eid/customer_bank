import 'package:flutter/material.dart';

class AuthTextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final Function(String)? onChanged;
  final bool obscureText;
  final String? hintText;
  const AuthTextFieldWidget(
      {super.key,
      required this.controller,
      this.keyboardType,
      this.validator,
      this.autovalidateMode,
      this.obscureText = false,
      this.hintText,
      this.onChanged});

  @override
  State<AuthTextFieldWidget> createState() => _AuthTextFieldWidgetState();
}

class _AuthTextFieldWidgetState extends State<AuthTextFieldWidget> {
  bool isShowPassword = false;
  @override
  void initState() {
    isShowPassword = !widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      style: Theme.of(context).textTheme.headlineLarge,
      validator: widget.validator,
      onChanged: widget.onChanged,
      // (value) {
      //   if (value == null || value.isEmpty) {
      //     return 'Please enter your phone number';
      //   }
      //   return null;
      // },
      obscureText: !isShowPassword,
      autovalidateMode:
          widget.autovalidateMode ?? AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: widget.obscureText
              ? isShowPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isShowPassword = !isShowPassword;
                        });
                      },
                      icon: const Icon(Icons.visibility_off))
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          isShowPassword = !isShowPassword;
                        });
                      },
                      icon: const Icon(Icons.visibility))
              : null),
    );
  }
}
