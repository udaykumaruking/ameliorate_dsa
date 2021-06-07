import 'package:ameliorate_dsa/widgets/buildCard.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../constants.dart';

class AmeliorateDSA extends StatefulWidget {
  @override
  _AmeliorateDSAState createState() => _AmeliorateDSAState();
}

class _AmeliorateDSAState extends State<AmeliorateDSA> {
  final CollectionReference topics =
      FirebaseFirestore.instance.collection('topics');
  List<Widget> dfs = [];
  @override
  void initState() {
    super.initState();

    topics.get().then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((element) {
        // print(element['name']);

        dfs.add(BuildCard(
          topicName: element['name'],
          noOfQuestions: element['noOfQuestions'],
        ));
      });
      setState(() => dfs);
    });
  }

  @override
  Widget build(BuildContext context) {
    int totquest = 30;
    return Scaffold(
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
              Text(
                'Portal to enhance DSA expertise',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 25,
                    letterSpacing: 0.6,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
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
              const SizedBox(
                height: 50,
              ),
              Wrap(
                spacing: 20.0, // gap between adjacent chips
                runSpacing: 20.0,
                alignment: WrapAlignment.spaceAround,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: dfs,
              )
            ],
          ),
        ),
      ),
    );
  }

  //dsa
}
