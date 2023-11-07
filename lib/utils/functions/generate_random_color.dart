import 'dart:math';

import 'package:flutter/material.dart';

Color generateRandomColor() {
  final random = Random();
  
  return Color.fromARGB(
    random.nextInt(255),
    random.nextInt(255),
    random.nextInt(255),
    random.nextInt(255),
  );
}
