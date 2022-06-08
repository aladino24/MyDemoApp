// ignore_for_file: must_be_immutable

import 'package:demo1/product/colors.dart';
import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  final Color color;
  final String text;
  late double size;
  final TextOverflow overflow;
  late FontWeight fontWeight;

  BigText(
      {Key? key,
      required this.text,
      this.color = AppColors.titleColor,
      this.overflow = TextOverflow.ellipsis,
      this.size = 20,
      this.fontWeight = FontWeight.bold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(color: color, fontWeight: fontWeight, fontFamily: 'Lilita', fontSize: size),
    );
  }
}
