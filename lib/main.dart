import 'package:flutter/material.dart';
import 'package:secretary_kim/component/belongings_grid.dart';
import 'package:secretary_kim/component/buttons.dart';
import 'package:secretary_kim/component/title_text.dart';
import 'package:secretary_kim/component/top_bar.dart';
import 'package:secretary_kim/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: SkColors.black,
        body: Column(
          children: [
            // For Status Bar
            SizedBox(height: 24),
            TopBar(),
            SizedBox(height: 14),
            TitleText(title: "준비된 소지품을 클릭해주세요"),
            SizedBox(height: 34),
            BelongingsGrid(),
            MoveButton(isEnabled: false)
          ],
        ),
      ),
    );
  }
}
