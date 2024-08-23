import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddUserLogic extends GetxController {
  TextEditingController userName = TextEditingController();
  TextEditingController fullName = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController position = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  validateFields() {
    return true;
  }
}
