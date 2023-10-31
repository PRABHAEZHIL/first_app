import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(
        [Color.fromARGB(255, 170, 225, 232), Color.fromARGB(255, 27, 152, 169)],
      )),
    ),
  );
}
