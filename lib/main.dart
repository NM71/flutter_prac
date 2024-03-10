import 'package:do_list/pages/first_page.dart';
import 'package:do_list/pages/home_page.dart';
import 'package:do_list/pages/profile.dart';
import 'package:do_list/pages/second_page.dart';
import 'package:do_list/pages/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/secondpage': (context)=> SecondPage(),
        '/home':(context)=> HomePage(),
        '/settings':(context)=> SettingsPage(),
        '/profile': (context)=> Profile(),
      },
    );
  }
}
