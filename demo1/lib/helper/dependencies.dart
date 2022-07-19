import 'package:demo1/controllers/popular_product_controller.dart';
import 'package:demo1/data/api/api_client.dart';
import 'package:demo1/data/repository/popular_product_repo.dart';
import 'package:demo1/product/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repositories
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
