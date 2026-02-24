import "package:flutter/material.dart";
import "gradient_container.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
                  Color.fromARGB(255, 99, 25, 227), 
                  Color.fromARGB(255, 28, 11, 58)
                )
      ),
    ),
  );
}

