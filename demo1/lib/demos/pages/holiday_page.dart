import 'package:demo1/product/colors.dart';
import 'package:demo1/product/language_items.dart/language_items.dart';
import 'package:demo1/product/widgets/big_text_widget.dart';
import 'package:demo1/product/widgets/small_text_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HolidayPage extends StatefulWidget {
  const HolidayPage({Key? key}) : super(key: key);

  @override
  State<HolidayPage> createState() => _HolidayPageState();
}

class _HolidayPageState extends State<HolidayPage> {
  PageController pageController = PageController(viewportFraction: 0.84);
  var _currPageValue = 0.0;

  List pages = [
    const AssetImage("assets/images/jpg/66.jpg"),
    const AssetImage("assets/images/png/2765859545_preview_Screenshot_1.png"),
    const AssetImage("assets/images/png/1141570.png"),
    const AssetImage("assets/images/jpg/peakpx.jpg"),
    const AssetImage("assets/images/jpg/5lpif5izwoo41.jpg"),
  ];

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      //addListener resmin hareketi değişip değişmediğini kontrol eder
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  /*
  @override
  void dispose() {
    pageController.dispose();
  }
  */

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.transparent,
          height: 250,
          width: 370,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: ((context, index) {
              return _buildPageItem(index);
            }),
          ),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 20, left: 5),
          alignment: AlignmentDirectional.bottomStart,
          child: BigText(
            text: LanguageItems.oneriler,
            size: 25,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          height: 1000,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(left: 10, right: 10, bottom: 50),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                child: Row(children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white38,
                        image: DecorationImage(fit: BoxFit.cover, image: pages[index])),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: 'Demon Slayer',
                        fontWeight: FontWeight.w200,
                      ),
                      SmallTextWidget(
                        text: 'İblisleri konu alır',
                      ),
                    ],
                  ),
                ]),
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 200,
          margin: const EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(fit: BoxFit.cover, image: pages[index]),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100,
            width: 500,
            margin: const EdgeInsets.only(left: 25, right: 25),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Container(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                BigText(
                  text: 'Blue Lock',
                  fontWeight: FontWeight.w300,
                ),
                SmallTextWidget(
                  text: 'Konusu futbol olan bir animedir',
                ),
                const Divider(
                  color: AppColors.iconBackground,
                  thickness: 1,
                ),
                Row(
                  children: [
                    BigText(
                      text: 'Score 4.5',
                      size: 15,
                      fontWeight: FontWeight.w100,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    BigText(
                      text: '500 Yorum',
                      size: 15,
                      fontWeight: FontWeight.w100,
                    ),
                  ],
                )
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
