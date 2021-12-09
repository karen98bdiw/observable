import 'dart:math';

import 'package:flutter/material.dart';
import 'package:obs/observable.dart';
import 'package:obs/observer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyObserver(subject: MyObservable().getObservable),
          MyObserver(subject: MyObservable().getObservable),
          TextButton(
            onPressed: () {
              String data = Random().nextInt(100).toString();
              MyObservable().addData("some new data $data");
            },
            child: Text("press me"),
          ),
        ],
      ),
    );
  }
}
