import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machinerent/core/helper/input_validator.dart';

class LoginUserLogic extends GetxController {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  validateFields() {
    if (InputValidators.simpleValidation(userNameController.text) == null &&
        InputValidators.simpleValidation(passwordController.text) == null) {
      return true;
    }
    return false;
  }

  void login() async {}
}
