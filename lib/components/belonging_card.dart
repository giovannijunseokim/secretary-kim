import 'package:flutter/material.dart';
import 'package:secretary_kim/theme/colors.dart';
import 'package:secretary_kim/theme/text_style.dart';

class BelongingCard extends StatelessWidget {
  final String name;
  final bool isClicked;

  const BelongingCard({super.key, required this.name, required this.isClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isClicked ? SkColors.blue1 : SkColors.gray2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        name,
        style: SkTextStyle.normal18,
      ),
    );
  }
}
