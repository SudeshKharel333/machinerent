import 'package:get/get.dart';

import 'loginuser_logic.dart';

class LoginUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginUserLogic());
  }
}
