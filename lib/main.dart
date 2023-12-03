import 'package:ecom/app/bottom_navigation_bar/view/bottom_bar_view.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        primaryColor: AppColors.primarySeed,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: AppColors.primarySeed,
          ),
          backgroundColor: AppColors.backgroundColor,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: AppColors.primarySeed,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          elevation: 5,
        ),
        iconTheme: const IconThemeData(
          color: AppColors.primarySeed,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
          selectionColor: Colors.blue,
        ),
        cardColor: AppColors.backgroundColor,
        brightness: Brightness.light,
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: AppColors.primarySeed,
              secondary: AppColors.secondaryColor,
              brightness: Brightness.light,
            ),
      ),
      home: const BottomBarView(),
    );
  }
}
