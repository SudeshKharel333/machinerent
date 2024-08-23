import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machinerent/Screen/AddMachine/addmachine_logic.dart';
import 'package:machinerent/core/enums/validation_type.dart';
import 'package:machinerent/widgets/buttons.dart';
import '/widgets/input_fields.dart';
import 'package:gap/gap.dart';

class AddMachineView extends StatefulWidget {
  const AddMachineView({super.key});

  @override
  State<AddMachineView> createState() => _AddmachineViewState();
}

class _AddmachineViewState extends State<AddMachineView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddMachineLogic>(builder: (logic) {
      return Scaffold(
        appBar: AppBar(
          title: Text("AddMachine"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              CostumeFormField(
                  validationType: ValidationType.common,
                  controller: logic.serialNoController,
                  hintText: "Serial No",
                  onChanged: () {}),
              const Gap(18),
              CostumeFormField(
                  validationType: ValidationType.common,
                  controller: logic.typeOfMachineController,
                  hintText: "Type of Machine",
                  onChanged: () {}),
              const Gap(18),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Add a photo"),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      width: 100,
                      height: 100,
                      //color: Colors.white,
                      child: Icon(Icons.add),
                    ),
                  ]),
              Gap(100),
              CostumeButtons.common(
                labelText: 'Add Machine',
                onPressed: () {
                  // logic.createUser();
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
