import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatelessWidget {
  final String id;
  QuestionScreen({@required this.id});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Text('$id'),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(101, 83, 178, 1)),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    elevation: MaterialStateProperty.all(0)),
                onPressed: () => {Navigator.pop(context)},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Text(
                    'View All Topics',
                    style: GoogleFonts.josefinSans(
                        textStyle: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.8,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
