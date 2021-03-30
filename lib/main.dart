import 'package:flutter/material.dart';

import 'package:cv_mobile/Pages/AboutPage.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV Mobile',
      initialRoute: 'about',
      routes: {
        'about' : (_) => AboutMePage(),
      },
    );
  }
}