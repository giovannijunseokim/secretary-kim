import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:secretary_kim/data/local_storage_manager.dart';
import 'package:secretary_kim/ui/screens/home_screen.dart';
import 'package:secretary_kim/ui/theme/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageManager.storage.initStorage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    removeSystemNavigationBarColor();

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }

  void removeSystemNavigationBarColor() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: SkColors.black,
      ),
    );
  }
}
