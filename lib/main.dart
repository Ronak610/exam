import 'package:exam/Homepage.dart';
import 'package:exam/deta.dart';
import 'package:exam/shoping.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'd':(context) => DataScreen(),
        's':(context)=>shoping(),
      },
    ),
  );
}
