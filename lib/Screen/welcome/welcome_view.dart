import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:machinerent/Screen/welcome/welcome_logic.dart';
import 'package:machinerent/core/app_managers/assets_managers.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeLogic>(builder: (logic) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Welcome:Username"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Card(
                color: Colors.greenAccent,
                child: Row(
                  children: [
                    Image.asset(
                      AssetManager.appLogo,
                      width: 100,
                      height: 100,
                    ),
                    Text(
                      "ADD MACHINE",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Gap(18),
              Card(
                color: Colors.blueAccent,
                child: Row(
                  children: [
                    Image.asset(
                      AssetManager.appLogo,
                      width: 100,
                      height: 100,
                    ),
                    Text(
                      "VIEW MACHINE",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
