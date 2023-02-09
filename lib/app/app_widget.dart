import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hello_word/app/view/home_page.dart';

class AppWidth extends StatelessWidget {
  const AppWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
