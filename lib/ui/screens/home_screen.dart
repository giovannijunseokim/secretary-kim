import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secretary_kim/constant/path.dart';
import 'package:secretary_kim/data/local_storage_manager.dart';
import 'package:secretary_kim/data/model/destination.dart';
import 'package:secretary_kim/ui/components/destination_card.dart';
import 'package:secretary_kim/ui/components/title_text.dart';
import 'package:secretary_kim/ui/components/top_bar.dart';
import 'package:secretary_kim/ui/screens/belongings_screen.dart';
import 'package:secretary_kim/ui/theme/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Iterable<Destination> destinations = [];

  @override
  void initState() {
    super.initState();
    destinations = LocalStorageManager.storage.getDestinations().values;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SkColors.black,
      body: Column(
        children: [
          const SizedBox(height: 24),
          const TopBar(doesBackIconVisible: false),
          const SizedBox(height: 14),
          const TitleText(title: "어디로 가실 계획이신가요?"),
          if (destinations.isNotEmpty)
            Expanded(
              child: ListView.separated(
                itemCount: destinations.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: DestinationCard(
                      name: destinations.elementAt(index).name,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return BelongingsScreen(
                                index: index,
                              );
                            },
                          ),
                        );
                      },
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 24);
                },
              ),
            )
          else
            Expanded(
              child: Image.asset(
                "${Path.image}img_empty.png",
                width: 244,
                height: 244,
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 28,
                  bottom: 28,
                ),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: FloatingActionButton.extended(
                    backgroundColor: SkColors.blue1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {},
                    label: SvgPicture.asset(
                      "${Path.icon}ic_plus.svg",
                      width: 24,
                      height: 24,
                      color: SkColors.white,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
