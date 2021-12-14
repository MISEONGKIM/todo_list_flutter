import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdDetail extends StatelessWidget {
  const ThirdDetail({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    final args =   ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('ThirdPage Page'),
      ),
      body: Container(
        child: Center(
          child: Text(args, style: TextStyle(fontSize: 30),),
        ),
      )
    );
  }
}

