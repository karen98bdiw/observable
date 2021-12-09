import 'package:rxdart/rxdart.dart';

import 'package:flutter/material.dart';

class MyObserver extends StatelessWidget {
  final BehaviorSubject<String> subject;
  const MyObserver({Key? key, required this.subject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget child;
    return StreamBuilder(
        stream: subject.stream,
        builder: (BuildContext context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.active:
              child = _valueView(snapshot.data as String);
              break;

            default:
              child = CircularProgressIndicator();
          }
          return child;
        });
  }

  Widget _valueView(String value) {
    return Text(value);
  }
}
