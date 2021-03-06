import 'package:ameliorate_dsa/screens/questionsScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class BuildCard extends StatelessWidget {
  final String topicName;
  final int noOfQuestions;
  final String id;
  BuildCard(
      {@required this.topicName,
      @required this.noOfQuestions,
      @required this.id});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 210,
      ),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: kVoilet,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$topicName',
              textAlign: TextAlign.center,
              style: GoogleFonts.jost(
                  textStyle: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.5,
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Total Questions: $noOfQuestions',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              )),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(101, 83, 178, 1)),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0)),
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QuestionScreen(
                              id: id,
                              topicName: topicName,
                            )))
              },
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
            const Text(''),
          ],
        ),
      ),
    );
  }
}
