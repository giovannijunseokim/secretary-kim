import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secretary_kim/constant/path.dart';
import 'package:secretary_kim/ui/theme/colors.dart';
import 'package:secretary_kim/ui/theme/text_style.dart';

class MoveButton extends StatelessWidget {
  final bool isEnabled;

  const MoveButton({super.key, required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 28),
      padding: const EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isEnabled ? SkColors.blue1 : SkColors.gray2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        "이동하기",
        style: SkTextStyle.semiBold20,
      ),
    );
  }
}

class BelongingAddButton extends StatelessWidget {
  const BelongingAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: SkColors.blue2,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(
        "${Path.icon}ic_plus.svg",
        color: SkColors.blue2,
        width: 24,
        height: 24,
      ),
    );
  }
}
