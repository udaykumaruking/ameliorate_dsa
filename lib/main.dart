import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'widgets/buildSizedBox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getElevation(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return 15.toDouble();
      }
      return 5.toDouble();
    }

    int totquest = 30;
    return MaterialApp(
      home: Scaffold(
        body: Padding(
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
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: kVoilet,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              'Array',
                              style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                              )),
                            ),
                            BuildSizedBox(
                              height: 10,
                            ),
                            Text(
                              'Total Questions: 40',
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                              )),
                            ),
                            BuildSizedBox(
                              height: 15,
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromRGBO(101, 83, 178, 1)),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  elevation: MaterialStateProperty.all(0)),
                              onPressed: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                child: Text(
                                  'Start Now',
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                    fontSize: 16,
                                    letterSpacing: 0.8,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                            ),
                            Text(''),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
