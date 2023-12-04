import 'package:ecom/app/bottom_navigation_bar/view/bottom_bar_view.dart';
import 'package:ecom/app/bottom_navigation_bar/view_model/bottom_bar_view_model.dart';
import 'package:ecom/app/home/view_model/home_view_model.dart';
import 'package:ecom/app/products_listing/view_model/products_listing_view_model.dart';
import 'package:ecom/res/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return BottomBarViewModel();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return HomeViewModel();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return ProductsListingViewModel();
          },
        )
      ],
      child: const MyApp(),
    ),
  );
 
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
