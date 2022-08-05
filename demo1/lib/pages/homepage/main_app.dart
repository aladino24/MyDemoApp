import 'package:flutter/material.dart';

import '../../../product/language_items.dart/language_items.dart';
import '../../../product/widgets/big_text_widget.dart';
import '../../../product/widgets/navigation_destination_widget.dart';
import '../randompage/my_collections.demos.dart';
import '../randompage/tabbar_advance.dart';
import 'main_holiday_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List screens = [
    const MainHolidayPage(),
    const TabAdvanceLearn(),
    const MyCollectionsDemos(),
    Center(child: BigText(text: 'Settings')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: const Color(0xff85F4FF),
          labelTextStyle: MaterialStateProperty.all(const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        ),
        child: NavigationBar(
          height: 70,
          selectedIndex: currentIndex,
          animationDuration: const Duration(seconds: 1),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: (int newIndex) {
            setState(() {
              currentIndex = newIndex;
            });
          },
          destinations: [
            bottomDestination(Icons.home, Icons.home_outlined, LanguageItems.home),
            bottomDestination(Icons.flag, Icons.flag_outlined, LanguageItems.eco),
            bottomDestination(Icons.person, Icons.person_outlined, LanguageItems.person),
            bottomDestination(Icons.settings, Icons.settings_outlined, LanguageItems.settings),
          ],
        ),
      ),
    );
  }
}
