import 'package:get/get.dart';

import '../auth/auth_google.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => authWithGoogle());
  }
}
