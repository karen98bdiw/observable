import 'package:rxdart/rxdart.dart';

class MyObservable {
  //3 line down here it is realisation for singleton pattern,
  //it is made to avoid unnecessary instances for my class
  MyObservable._internal();
  static final MyObservable _myObservable = MyObservable._internal();
  factory MyObservable() => _myObservable;

  final BehaviorSubject<String> _subject =
      BehaviorSubject<String>.seeded("seedValue");

  BehaviorSubject<String> get getObservable => _subject;

  void addData(String data) {
    _subject.add(data);
  }

  void close() {
    _subject.close();
  }
}
