import 'package:get/get.dart';

class WorkController extends GetxController {
  RxBool switchVar = false.obs;

  ChangeSwitchTrue(value) {
    switchVar.value = value;
  }
}
