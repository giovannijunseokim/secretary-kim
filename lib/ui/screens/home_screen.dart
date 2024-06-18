import 'package:flutter/material.dart';
import 'package:secretary_kim/ui/components/title_text.dart';
import 'package:secretary_kim/ui/components/top_bar.dart';
import 'package:secretary_kim/ui/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SkColors.black,
      body: Column(
        children: [
          SizedBox(height: 24),
          TopBar(doesBackIconVisible: false),
          SizedBox(height: 14),
          TitleText(title: "어디로 가실 계획이신가요?"),
        ],
      ),
    );
  }
}
