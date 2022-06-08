import 'package:flutter/cupertino.dart';

import '../colors.dart';

// ignore: must_be_immutable
class SmallTextWidget extends StatelessWidget {
  SmallTextWidget(
      {Key? key,
      required this.text,
      this.size = 15,
      this.color = AppColors.textColor,
      this.overflow = TextOverflow.clip})
      : super(key: key);
  final String text;
  late double size;
  final Color color;
  TextOverflow overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(fontSize: size, color: color),
    );
  }
}
