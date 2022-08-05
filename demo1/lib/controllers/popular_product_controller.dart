import 'dart:convert';

import 'package:demo1/data/repository/popular_product_repo.dart';
import 'package:demo1/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    print(response.statusCode);
    if (response.statusCode == 200) {
      print("got products");
      _popularProductList = [];

      Map<String, dynamic> rawData = jsonDecode(response.body);
      _popularProductList.addAll(Product.fromJson(rawData).products);
      //print(_popularProductList);
      update();
    } else {
      print("ananucts");
    }
  }
}
