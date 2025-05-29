import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomInputWidget extends StatefulWidget {
  String? labelText,hintText;
  Icon? prefixIcon;
  TextEditingController? controller;
  CustomInputWidget({super.key, this.hintText, this.prefixIcon, this.labelText, this.controller});

  @override
  State<CustomInputWidget> createState() => _CustomInputWidgetState();
}

class _CustomInputWidgetState extends State<CustomInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
            prefixIcon: widget.prefixIcon,
            labelText: "${widget.labelText}",
            hintText: "${widget.hintText}",
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)
            )
        ),
      ),
    );
  }
}
