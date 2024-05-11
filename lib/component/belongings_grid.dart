import 'package:flutter/material.dart';
import 'package:secretary_kim/component/belonging_card.dart';
import 'package:secretary_kim/component/buttons.dart';

class BelongingsGrid extends StatelessWidget {
  const BelongingsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 24,
        childAspectRatio: 140 / 81,
        padding: const EdgeInsets.symmetric(horizontal: 28),
        children: const [
          BelongingCard(name: "휴대폰", isClicked: true),
          BelongingCard(name: "지갑", isClicked: false),
          BelongingCard(name: "휴대폰", isClicked: false),
          BelongingCard(name: "지갑", isClicked: false),
          BelongingAddButton()
        ],
      ),
    );
  }
}
