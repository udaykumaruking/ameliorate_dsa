import 'package:ameliorate_dsa/constants.dart';
import 'package:ameliorate_dsa/widgets/buildQuestionCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  final String id;
  final String topicName;
  QuestionScreen({@required this.id, @required this.topicName});

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  List<Widget> cards = [];

  final FirebaseFirestore topics = FirebaseFirestore.instance;
  @override
  void initState() {
    super.initState();

    topics.collection(widget.id).get().then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((element) {
        cards.add(BuildQuestionCard(
          question: element['questionName'],
          url: element['url'],
        ));
      });

      setState(() => cards);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Topics/',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: 25,
                            letterSpacing: 0.6,
                            fontWeight: FontWeight.w500,
                            color: kVoilet,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '${widget.topicName}',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: 25,
                          letterSpacing: 0.6,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Total Questions: ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 20.0, // gap between adjacent chips
                  runSpacing: 20.0,
                  alignment: WrapAlignment.spaceAround,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: cards,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
