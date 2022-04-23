import 'package:fuelit_pilot/controllers/product_controller.dart';
import 'package:fuelit_pilot/data/api/api_client.dart';
import 'package:fuelit_pilot/data/api/repository/product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "http://www.messwithage.com"));
  //repos
  Get.lazyPut(() => ProductRepo(apiClient: Get.find()));

  //controller
  Get.lazyPut(() => ProductController(productRepo: Get.find()));
}
