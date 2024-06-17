import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: Color(0xffFAFAFA),
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffFAFAFA),
      ),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
