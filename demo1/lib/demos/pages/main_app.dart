import 'package:demo1/demos/pages/password_text_field.dart';
import 'package:flutter/material.dart';

import '../../product/language_items.dart/language_items.dart';
import '../../product/widgets/big_text_widget.dart';
import '../../product/widgets/navigation_destination_widget.dart';
import 'main_holiday_page.dart';
import 'my_collections.demos.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int currentIndex = 0;

  List screens = [
    const MainHolidayPage(),
    const PasswordTextField(),
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
