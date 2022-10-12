// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "../images/image1.jpeg",
              scale: 4,
            ),
            Divider(),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              color: Color.fromARGB(255, 59, 53, 53),
              child: Center(
                child: Text(
                  "This is a widget",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.blue : Colors.green,
              ),
              onPressed: () {},
              child: Text("Elevated Button"),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text("Outlined Button"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Text Button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (() {
                print("Clicked");
              }),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.amber,
                  ),
                  Text("Row Widget"),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (trueorfalse) {
                  isSwitch = trueorfalse;
                  setState(() {});
                }),
            Image.network(
              "https://minutemirror.com.pk/wp-content/uploads/2021/10/babar-azam.jpg",
              scale: 4,
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
