import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';
import 'package:get_storage/get_storage.dart';
import 'package:machinerent/Screen/auth/login/loginuser_logic.dart';
//import 'package:machinerent/auth/login/loginuser_logic.dart';
import 'package:machinerent/core/app_managers/assets_managers.dart';
import 'package:machinerent/core/enums/validation_type.dart';
import 'package:machinerent/widgets/buttons.dart';
import 'package:machinerent/widgets/input_fields.dart';

class LoginUserView extends StatefulWidget {
  const LoginUserView({super.key});

  @override
  State<LoginUserView> createState() => _LoginUserViewState();
}

class _LoginUserViewState extends State<LoginUserView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginUserLogic>(builder: (logic) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  AssetManager.appLogo,
                  width: 100,
                  height: 100,
                ),
              ),
              Text(
                "Rent Machine",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                "version 1.0",
                style: TextStyle(color: Colors.redAccent),
              ),
              Gap(18),
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Gap(18),
              CostumeFormField(
                validationType: ValidationType.email,
                controller: logic.userNameController,
                hintText: "Enter your Username",
                onChanged: () {
                  setState(() {});
                },
                labelText: "Email",
              ),
              Gap(18),
              CostumeFormField(
                validationType: ValidationType.password,
                controller: logic.passwordController,
                hintText: "Enter your password",
                onChanged: () {
                  setState(() {});
                },
                labelText: "Password",
              ),
              Gap(18),
              CostumeButtons.common(
                labelText: 'Login',
                onPressed: () {
                  logic.login();
                },
                isEnabled: logic.validateFields(),
              ),
            ],
          ),
        ),
      );
    });
  }
}
