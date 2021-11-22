import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final String? buttonText;
  final void Function()? onPressed;

  const ButtonWidget({
    Key? key,
    this.buttonText,
    this.onPressed,
  }) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 9.0, horizontal: 20.0),
        margin: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Text(
          widget.buttonText!,
          style: const TextStyle(fontSize: 25.0, color: Colors.white),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.black),
      ),
    );
  }
}
