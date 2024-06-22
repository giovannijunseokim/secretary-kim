import 'package:flutter/material.dart';
import 'package:secretary_kim/data/local_storage_manager.dart';
import 'package:secretary_kim/data/model/belonging.dart';
import 'package:secretary_kim/ui/components/belongings_grid.dart';
import 'package:secretary_kim/ui/components/buttons.dart';
import 'package:secretary_kim/ui/components/title_text.dart';
import 'package:secretary_kim/ui/components/top_bar.dart';
import 'package:secretary_kim/ui/theme/colors.dart';

class BelongingsScreen extends StatefulWidget {
  final int index;

  const BelongingsScreen({super.key, required this.index});

  @override
  State<BelongingsScreen> createState() => _BelongingsScreenState();
}

class _BelongingsScreenState extends State<BelongingsScreen> {
  Iterable<Belonging> belongings = [];
  late int index = widget.index;

  @override
  void initState() {
    super.initState();
    belongings = LocalStorageManager.storage.getDestination(index)!.belongings;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SkColors.black,
      body: Column(
        children: [
          SizedBox(height: 24),
          TopBar(doesBackIconVisible: true),
          SizedBox(height: 14),
          TitleText(title: "준비된 소지품을 클릭해주세요"),
          SizedBox(height: 34),
          BelongingsGrid(
            belongings: belongings.map(
              (belonging) {
                return belonging.name;
              },
            ),
          ),
          MoveButton(isEnabled: false)
        ],
      ),
    );
  }
}
