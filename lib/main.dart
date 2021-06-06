import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'widgets/buildCard.dart';
import 'widgets/buildSizedBox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int totquest = 30;
    return MaterialApp(
      title: 'Ameliorate DSA',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'Ameliorate DSA',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.jost(
                      textStyle: TextStyle(
                        color: kVoilet,
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    'Portal to enhance DSA expertise',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: 25,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  BuildSizedBox(
                    height: 15,
                  ),
                  Text(
                    'Total Questions: $totquest',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.josefinSans(
                      textStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  BuildSizedBox(
                    height: 50,
                  ),
                  Wrap(
                    spacing: 20.0, // gap between adjacent chips
                    runSpacing: 20.0,

                    children: [
                      BuildCard(),
                      BuildCard(),
                      BuildCard(),
                      BuildCard(),
                      BuildCard(),
                      BuildCard(),
                      BuildCard(),
                      BuildCard(),
                      BuildCard(),
                      BuildCard(),
                      BuildCard(),
                      BuildCard(),
                      BuildCard(),
                      BuildCard(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
