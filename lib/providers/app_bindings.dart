import 'package:get/get.dart';

import '../controllers/assets_pre_cacher.dart';

class AppBindings extends Bindings {
  // ignore: prefer_typing_uninitialized_variables
  var context;
  AppBindings({required this.context});

  @override
  void dependencies() {
    Get.put<AssetsPreCacher>(AssetsPreCacher(context: context));
  }
}
