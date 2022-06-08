import 'package:demo1/product/language_items.dart/language_items.dart';
import 'package:demo1/product/widgets/big_text_widget.dart';
import 'package:demo1/product/colors.dart';
import 'package:flutter/material.dart';

import '../product/widgets/small_text_widget.dart';

import 'holiday_page.dart';

const TextStyle _textStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

class MainHolidayPage extends StatefulWidget {
  const MainHolidayPage({Key? key}) : super(key: key);

  @override
  State<MainHolidayPage> createState() => _MainHolidayPageState();
}

class _MainHolidayPageState extends State<MainHolidayPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCFAF8),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 45, bottom: 15),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: LanguageItems.homeTitle,
                      size: 30,
                    ),
                    Row(
                      children: [
                        SmallTextWidget(
                          text: 'Burası alev alev Dikkat',
                        ),
                        const Icon(
                          Icons.local_fire_department,
                          color: AppColors.fireIconColor,
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColors.iconBackground),
                  child: IconButton(onPressed: () {}, icon: const Icon(Icons.search, size: 30)),
                )
              ],
            ),
          ),
          const Expanded(child: SingleChildScrollView(child: HolidayPage())),
        ],
      ),
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
