import 'package:flutter/material.dart';

final ButtonStyle buttonprimary =  ElevatedButton.styleFrom(
  minimumSize: Size(327,50),
  primary: Colors.orange,
  textStyle: TextStyle(
    fontSize: 20.0,
  ),
  shape:const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(50),
    ),
  ),
);