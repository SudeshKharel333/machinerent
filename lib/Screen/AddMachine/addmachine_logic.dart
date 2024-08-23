import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddMachineLogic extends GetxController {
  TextEditingController serialNoController = TextEditingController();
  TextEditingController typeOfMachineController = TextEditingController();
  validateFields() {
    return true;
  }
}
