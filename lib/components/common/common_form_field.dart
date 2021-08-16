import 'package:flutter/material.dart';
import 'package:flutter_airbnb/styles.dart';

class CommonFormField extends StatelessWidget {
  final prefixText;
  final hintText;

  const CommonFormField({this.prefixText, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          //텍스트 세로 정렬
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,
              )
            )
          ),
        ),
        Positioned(
          top: 8,
          left: 20,
          child: Text(
            prefixText,
            style: overLine(),
          ),
        )
      ],
    );
  }
}
