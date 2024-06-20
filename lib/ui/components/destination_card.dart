import 'package:flutter/material.dart';
import 'package:secretary_kim/ui/theme/colors.dart';
import 'package:secretary_kim/ui/theme/text_style.dart';

class DestinationCard extends StatelessWidget {
  final String name;
  final bool isEditing;

  const DestinationCard({
    super.key,
    required this.name,
    this.isEditing = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isEditing ? SkColors.gray2 : SkColors.blue1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Text(
          name,
          style: SkTextStyle.semiBold18,
        ),
      ),
    );
  }
}
