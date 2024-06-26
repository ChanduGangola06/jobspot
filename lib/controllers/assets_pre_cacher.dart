// ignore_for_file: unused_local_variable, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:get/get.dart';

class AssetsPreCacher extends GetxController {
  var context;
  AssetsPreCacher({required this.context});
  @override
  void onInit() {
    startCaching(context);
    super.onInit();
  }

  Future<void> startCaching(context) async {
    List assets = [
      "assets/icons/app-logo.svg",
      "assets/icons/onboard.svg",
    ];
  }
}
