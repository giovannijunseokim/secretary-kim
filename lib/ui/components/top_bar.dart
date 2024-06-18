import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:secretary_kim/constant/path.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
    required this.doesBackIconVisible,
  });

  final bool doesBackIconVisible;

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
            if (doesBackIconVisible)
              SvgPicture.asset(
                "${Path.icon}ic_arrow_left.svg",
                width: 24,
                height: 24,
              )
            else
              const SizedBox(width: 24),
            const Spacer(),
            Image.asset(
              "${Path.image}img_secretary_kim.png",
              width: 98,
              height: 119,
            ),
            const Spacer(),
            SvgPicture.asset(
              "${Path.icon}ic_modify.svg",
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
