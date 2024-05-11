import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 28),
            SvgPicture.asset(
              "assets/icons/ic_arrow_left.svg",
              width: 24,
              height: 24,
            ),
            const Spacer(),
            Image.asset(
              "assets/images/img_secretary_kim.png",
              width: 98,
              height: 119,
            ),
            const Spacer(),
            SvgPicture.asset(
              "assets/icons/ic_modify.svg",
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 28),
          ],
        )
      ],
    );
  }
}
