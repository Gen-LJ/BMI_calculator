
import 'package:bmi_calculator/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screen/home.dart';

void main() {
  runApp(const BMI());
}


class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);


  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {


  @override
  void initState(){

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_)=> ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context,ThemeProvider themeNotifier,child) {
         return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeNotifier.isDark ? ThemeData.dark() : ThemeData.light(),
            home: const Home(),
          );
        }),
    );
  }
}
