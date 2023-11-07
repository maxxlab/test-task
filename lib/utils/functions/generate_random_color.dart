import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_task/utils/constants/constants.dart';

/// Generate random Color
Color generateRandomColor() {
  final random = Random();
  
  return Color.fromARGB(
    random.nextInt(limit),
    random.nextInt(limit),
    random.nextInt(limit),
    random.nextInt(limit),
  );
}
