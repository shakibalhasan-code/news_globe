import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_globe/stylish/colors.dart';
import 'package:news_globe/views/screens/home/home_screen_view.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
          primaryColor: AppColors.themeColor,
          textTheme: const TextTheme(
              headlineMedium: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'SfPro',
              ),
            bodyMedium: TextStyle(
              fontSize: 16,
              fontFamily: 'SfPro'
            ),
            titleMedium: TextStyle(
                fontSize: 18,
                fontFamily: 'SfPro'
            ),
          )
      ),
      home: const Scaffold(
        body: HomeScreenView(),
      ),
    );
  }


}
