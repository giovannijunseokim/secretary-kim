import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:secretary_kim/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: SkColors.black,
        body: const Column(
          children: [
            // For Status Bar
            SizedBox(height: 24),
            TopBar(),
            SizedBox(height: 14),
            Title(title: "준비된 소지품을 클릭해주세요"),
            SizedBox(height: 34),
            BelongingsGrid(),
            MoveButton(isEnabled: false)
          ],
        ),
      ),
    );
  }
}

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

class Title extends StatelessWidget {
  final String title;

  const Title({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: SkColors.white,
        fontSize: 18,
      ),
    );
  }
}

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
          AddBelongingCard()
        ],
      ),
    );
  }
}

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
        style: TextStyle(color: SkColors.white, fontSize: 18),
      ),
    );
  }
}

class AddBelongingCard extends StatelessWidget {
  const AddBelongingCard({super.key});

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
        "assets/icons/ic_plus.svg",
        color: SkColors.blue2,
        width: 24,
        height: 24,
      ),
    );
  }
}

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
      child: Text(
        "이동하기",
        style: TextStyle(color: SkColors.white, fontSize: 18),
      ),
    );
  }
}
