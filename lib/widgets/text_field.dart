import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final bool obscureText;
  final String? hintText;
  final String labelText;

  const TextFieldWidget(
      {Key? key,
      this.obscureText = false,
      this.textInputType,
      this.controller,
      this.hintText,
      this.labelText = ""})
      : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.textInputType,
      controller: widget.controller,
      obscureText: widget.obscureText,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        label: Text(widget.labelText),
        hintText: widget.hintText,
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black)),
        border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black)),
        errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red)),
      ),
    );
  }
}
