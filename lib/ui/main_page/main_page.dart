import 'package:flutter/widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  static const tag = '/MainPage';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello'),
    );
  }
}
