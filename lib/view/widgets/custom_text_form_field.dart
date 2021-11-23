import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;

  final String hint;

  final Function onSave;
  final Function validator;
  final double hintsize;
  CustomTextFormField({
    this.text,
    this.hint,
    this.onSave,
    this.validator,
    this.hintsize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: text,
            fontSize: 16,
            color: Colors.grey.shade900,
          ),
          TextFormField(
            onSaved: onSave,
            validator: validator,
            decoration: InputDecoration(
              // border: UnderlineInputBorder(
              //   borderSide: new BorderSide(color: Color(0xff05759F)),
              // ),
              hintText: hint,
              hintStyle: TextStyle(
                fontSize: hintsize,
                color: Colors.black,
              ),
              fillColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
