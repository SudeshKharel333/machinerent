import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:machinerent/Screen/view_machine/view_machine_binding.dart';
import 'package:machinerent/Screen/view_machine/view_machine_view.dart';
import 'package:machinerent/Screen/welcome/welcome_binding.dart';
import 'package:machinerent/Screen/welcome/welcome_view.dart';
import 'package:machinerent/firebase_options.dart';
import 'package:machinerent/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

//late Alice alice;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final storage = GetStorage();

  // @override
  // void initState() {
  //   alice = Alice(
  //     showNotification: true,
  //     showInspectorOnShake: true,
  //     maxCallsCount: 1000,
  //   );
  //   super.initState();
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // navigatorKey: kDebugMode ? alice.getNavigatorKey() : null,
      title: 'Flutter Demooo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home:
          // (storage.read("is_login") != null && storage.read("is_login") == true)
          // ? HomeScreenPage()
          ViewMachinePage(),
      initialBinding:
          //(storage.read("is_login") != null && storage.read("is_login") == true)
          // ? ShopHomeBinding()
          // :
          ViewMachineBinding(),
      getPages: AppPages.pages,
    );
  }
}
