import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class BuildQuestionCard extends StatelessWidget {
  final String question;
  final String url;
  BuildQuestionCard({@required this.question, @required this.url});
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 250.0),
      child: Container(
        padding: EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
          border: Border.all(
            color: kVoilet,
            width: 2,
            style: BorderStyle.solid,
          ),
          color: kVoilet,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(244, 241, 250, 1),
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$question',
              textAlign: TextAlign.center,
              style: GoogleFonts.jost(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                ),
              ),
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
              onPressed: () {
                launch(url);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Solve',
                        style: GoogleFonts.josefinSans(
                          textStyle: TextStyle(
                            fontSize: 16,
                            letterSpacing: 0.8,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      WidgetSpan(
                        child: SizedBox(
                          width: 5,
                        ),
                      ),
                      WidgetSpan(
                        child: Icon(
                          Icons.arrow_right_alt,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // icon: Icon(Icons.arrow_right_alt),
            ),
          ],
        ),
      ),
    );
  }
}
