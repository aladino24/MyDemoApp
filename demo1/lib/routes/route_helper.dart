import 'package:demo1/pages/homepage/main_app.dart';
import 'package:get/get.dart';

import '../pages/randompage/icon_learn.dart';
import '../pages/randompage/my_collections.demos.dart';

class RouteHelper {
  static String initial = "/";
  static String popularManga = "/popular-manga";
  static String onerilerManga = "/Oneriler-manga";
  static String search = "MainPageSearch";
  static String getInitial() => initial;
  static String getPopularManga(int pageId) => '$popularManga?pageId=$pageId';
  static String getOnerilerManga(int index) => '$onerilerManga?';
  static String getSearch() => search;

  static List<GetPage<dynamic>> routes = [
    GetPage(name: initial, page: () => const HomePage()),
    GetPage(
        name: popularManga,
        page: () {
          var pageId = Get.parameters['pageId'];
          return IconLearnView(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    GetPage(
        name: onerilerManga,
        page: () {
          return const MyCollectionsDemos();
        },
        transition: Transition.fadeIn),
  ];
}
