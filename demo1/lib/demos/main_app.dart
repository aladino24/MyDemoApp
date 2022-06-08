import 'package:demo1/demos/main_holiday_page.dart';
import 'package:flutter/material.dart';

import '../product/language_items.dart/language_items.dart';
import '../product/widgets/big_text_widget.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int currentIndex = 0;

  final screens = [
    const MainHolidayPage(),
    BigText(text: 'Rank'),
    BigText(text: 'Person'),
    BigText(text: 'Settings'),
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
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: LanguageItems.home,
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.flag),
              icon: Icon(Icons.flag_outlined),
              label: LanguageItems.eco,
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outlined),
              label: LanguageItems.person,
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.settings),
              icon: Icon(Icons.settings_outlined),
              label: LanguageItems.video,
            ),
          ],
        ),
      ),
    );
  }
}
