import 'package:flutter/material.dart';
import 'package:login_teste/View/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PetSocial',
      theme: ThemeData(
        
        //primarySwatch: Color(0xFF055B47),
      
      ),
      home: const MyHomePage(),
    );
  }
}

