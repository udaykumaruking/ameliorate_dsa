import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text('Ameliorate DSA'),
              Text('Portal to enhance DSA expertise'),
              Text('Total Questions'),
            ],
          ),
        ),
      ),
    );
  }
}
