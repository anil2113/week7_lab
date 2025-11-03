//import needed library 
import 'package:flutter/material.dart';
import 'package:week7_lab/home_page.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
     title: 'Building Body',
     home: HomePage(),
     theme: ThemeData.light(),
     );
    
  }
}