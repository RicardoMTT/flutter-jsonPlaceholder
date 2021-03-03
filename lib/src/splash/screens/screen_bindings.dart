import 'package:formulario/src/splash/screens/screen_controller.dart';
import 'package:get/get.dart';

class SplashScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController());
  }
}
