import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_template/ui/main_page/main_page.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {MainPage.tag: (context) => MainPage()},
      initialRoute: MainPage.tag,
    );
  }
}
