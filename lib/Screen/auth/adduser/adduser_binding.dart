import 'package:get/get.dart';

import 'adduser_logic.dart';

class AddUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddUserLogic());
  }
}
