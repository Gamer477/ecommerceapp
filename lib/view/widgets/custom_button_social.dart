import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final Function onPress;

  CustomButtonSocial({
    @required this.text,
    @required this.imageName,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffDDDDDD).withOpacity(0.2),
      ),
      child: FlatButton(
        onPressed: onPress,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              Image.asset(imageName),
              SizedBox(
                width: 70,
              ),
              CustomText(
                text: text,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
