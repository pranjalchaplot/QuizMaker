import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 22),
      children: <TextSpan>[
        TextSpan(text: 'bold ', style: TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );
}
