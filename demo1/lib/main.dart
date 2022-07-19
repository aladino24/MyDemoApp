import 'package:demo1/controllers/popular_product_controller.dart';
import 'package:demo1/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'data/api/api_client.dart';
import 'data/repository/popular_product_repo.dart';
import 'helper/dependencies.dart' as dep;
import 'pages/homepage/main_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  dep.init;
  runApp(const GetxApp());
}

class GetxApp extends StatelessWidget {
  const GetxApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PopularProductController(
        popularProductRepo: PopularProductRepo(apiClient: ApiClient(appBaseUrl: "http://localhost:3333"))));

    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      //fontFamily: 'Lilita'
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.light().copyWith(
      //   appBarTheme: const AppBarTheme(
      //     systemOverlayStyle: SystemUiOverlayStyle.dark, // pil saat gibi nesneleri rengini değiştirir
      //     backgroundColor: Colors.transparent,
      //     elevation: 0,
      //   ),
      // ),
      home: const HomePage(),
      initialRoute: RouteHelper.initial, //birden fazla page için
      getPages: RouteHelper.routes,
    );
  }
}
