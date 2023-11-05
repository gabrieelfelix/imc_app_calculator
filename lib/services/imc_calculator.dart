import 'dart:math';
import 'package:flutter/material.dart';

class ImcCalc {
  static var weightController = TextEditingController();
  static var heightController = TextEditingController();
  static var nameController = TextEditingController();
  static dynamic imc;
  static String weightUser = '';
  static String heightUser = '';

  //input processing and verification
  static double computation() {
    checker();
    if (nameController.text != '' &&
        (weightController.text != '' && heightController.text != '')) {
      imc = imcCalc();
    }
    return imc;
  }

  //BMI calculation
  static double imcCalc() {
    return double.parse(weightUser) / pow(double.parse(heightUser), 2);
  }

  // textfield cleaning
  static void clearInput() {
    weightController.clear();
    heightController.clear();
    nameController.clear();
  }

  // checks user input and returns a pattern
  static void checker() {
    if (weightController.text.contains(',') &&
        heightController.text.contains(',')) {
      weightUser = weightController.text.replaceAll(',', '.');
      heightUser = heightController.text.replaceAll(',', '.');
    } else if (weightController.text.contains(',')) {
      weightUser = weightController.text.replaceAll(',', '.');
      heightUser = heightController.text;
    } else if (heightController.text.contains(',')) {
      heightUser = heightController.text.replaceAll(',', '.');
      weightUser = weightController.text;
    } else {
      heightUser = heightController.text;
      weightUser = weightController.text;
    }
  }
}
