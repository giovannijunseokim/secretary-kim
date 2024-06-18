import 'package:flutter/material.dart';
import 'package:secretary_kim/ui/components/belongings_grid.dart';
import 'package:secretary_kim/ui/components/buttons.dart';
import 'package:secretary_kim/ui/components/title_text.dart';
import 'package:secretary_kim/ui/components/top_bar.dart';
import 'package:secretary_kim/ui/theme/colors.dart';

class BelongingsScreen extends StatelessWidget {
  const BelongingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: SkColors.black,
      body: Column(
        children: [
          SizedBox(height: 24),
          TopBar(doesBackIconVisible: true),
          SizedBox(height: 14),
          TitleText(title: "준비된 소지품을 클릭해주세요"),
          SizedBox(height: 34),
          BelongingsGrid(),
          MoveButton(isEnabled: false)
        ],
      ),
    );
  }
}
