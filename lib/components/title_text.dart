import 'package:flutter/material.dart';
import 'package:secretary_kim/theme/text_style.dart';

class TitleText extends StatelessWidget {
  final String title;

  const TitleText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: SkTextStyle.semiBold18,
    );
  }
}
