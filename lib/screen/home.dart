import 'package:bmi_calculator/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key,}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex=0;
  @override
  void initState(){
      super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context,ThemeProvider themeNotifier,child){
        return Scaffold(
          appBar: AppBar(
            title:  Text('BMI Calculator'),
            actions: [
              IconButton(onPressed: (){

                themeNotifier.isDark ? themeNotifier.isDark = false : themeNotifier.isDark = true;

              }, icon: Icon(themeNotifier.isDark ? Icons.light_mode : Icons.dark_mode))

            ],),

          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                      children :[
                        radioButton('Male', Colors.blue, 0),
                        radioButton('Female', Colors.pink, 1),
                      ]
                  )


                ],
              ),
            ),
          ),
        );
      }
    );
  }
  void changeIndex(int index){
    setState(() {
      currentIndex=index;
    });
  }


  Widget radioButton(String value,Color color,int index){
      return Expanded(child:
      Container(
        //color: Colors.red,
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: currentIndex==index? color : Colors.grey.shade200
          ),
          onPressed: (){
            changeIndex(index);
          },
          child: Text(value,style: TextStyle(
              color: currentIndex==index? Colors.white : color,
              fontWeight:FontWeight.bold,
          fontSize: 20),),
        ),
      )
      );
  }
}

