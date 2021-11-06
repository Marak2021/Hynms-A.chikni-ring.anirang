import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() => runApp(Hymns());
class Hymns extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hymns App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: WelcomeScreen(),
      home: WelcomePage(),
    );
  }
}