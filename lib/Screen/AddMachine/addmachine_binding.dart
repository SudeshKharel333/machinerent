import 'package:get/get.dart';

import 'addmachine_logic.dart';

class AddMachineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddMachineLogic());
  }
}
