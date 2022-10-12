import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1hr/learnFlutterPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => LearnFlutterPage(),
            ));
          },
          child: Text("Learn Flutter")),
    );
  }
}
