import 'package:flutter/material.dart';
import 'package:secretary_kim/ui/components/belonging_card.dart';
import 'package:secretary_kim/ui/components/buttons.dart';

class BelongingsGrid extends StatelessWidget {
  final Iterable<String> belongings;

  const BelongingsGrid({super.key, required this.belongings});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 24,
        childAspectRatio: 140 / 81,
        padding: const EdgeInsets.symmetric(horizontal: 28),
        children: [
          for (String belonging in belongings) BelongingCard(name: belonging),
          const BelongingAddButton()
        ],
      ),
    );
  }
}
