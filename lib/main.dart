import 'package:flutter/material.dart';
import 'package:todo_list_flutter/secondDetail.dart';
import 'package:todo_list_flutter/subDetail.dart';
import 'thirdPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => SubDetail(),
        '/second' : (context) => SecondDetail(),
        '/third' : (context) => ThirdDetail()
      },
    );
  }
}
