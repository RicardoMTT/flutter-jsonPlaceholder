import 'package:formulario/src/app_routing/routes.dart';
import 'package:formulario/src/util/time.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onReady() async {
    print('xd');
    _init();
    super.onReady();
  }

  void _init() async {
    await sleep(1000);
    Get.offAllNamed(AppRoutes.tabs);
  }
}
