import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import 'buildSizedBox.dart';

class BuildCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(101, 83, 178, 1)),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0)),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: Text(
                  'Start Now',
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
            Text(''),
          ],
        ),
      ),
    );
  }
}
