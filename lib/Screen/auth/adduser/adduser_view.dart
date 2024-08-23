import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gap/gap.dart';
import 'package:machinerent/Screen/auth/adduser/adduser_logic.dart';
import 'package:machinerent/core/enums/validation_type.dart';
//import 'package:machinerent/auth/adduser/adduser_logic.dart';
import 'package:machinerent/widgets/buttons.dart';
//import '../../core/enums/validation_type.dart';
import '/widgets/input_fields.dart';

class AddUserView extends StatefulWidget {
  const AddUserView({super.key});

  @override
  State<AddUserView> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddUserLogic>(builder: (logic) {
      return Scaffold(
          appBar: AppBar(
            title: Text("Add User"),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(children: [
              CostumeFormField(
                  validationType: ValidationType.common,
                  controller: logic.userName,
                  hintText: "User Name",
                  onChanged: () {}),
              const Gap(18),
              CostumeFormField(
                  validationType: ValidationType.common,
                  controller: logic.fullName,
                  hintText: "Full Name",
                  onChanged: () {}),
              const Gap(18),
              CostumeFormField(
                  validationType: ValidationType.common,
                  controller: logic.contact,
                  hintText: "Contact Information",
                  onChanged: () {}),
              const Gap(18),
              CostumeFormField(
                  validationType: ValidationType.common,
                  controller: logic.position,
                  hintText: "Position",
                  onChanged: () {}),
              const Gap(18),
              CostumeFormField(
                  validationType: ValidationType.common,
                  controller: logic.password,
                  hintText: "Select your Password",
                  onChanged: () {}),
              const Gap(18),
              CostumeFormField(
                  validationType: ValidationType.common,
                  controller: logic.confirmPassword,
                  hintText: "Confirm Password",
                  onChanged: () {}),
              Gap(18),
              CostumeButtons.common(
                labelText: 'Add User',
                onPressed: () {
                  // logic.createUser();
                },
                isEnabled: logic.validateFields(),
              ),
            ]),
          ));
    });
  }
}
