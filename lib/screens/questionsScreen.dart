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
  // final CollectionReference topics =
  //     FirebaseFirestore.instance.collection('topics');
  // List<Widget> cards = [];
  // @override
  // void initState() {
  //   super.initState();

  //   topics.get().then((QuerySnapshot querySnapshot) {
  //     querySnapshot.docs.forEach((element) {
  //       // print(element['name']);

  //       // cards.add(BuildCard(
  //       //   topicName: element['name'],
  //       //   noOfQuestions: element['noOfQuestions'],
  //       //   id: element.id,
  //       // ));
  //     });

  //     // setState(() => cards);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Text('${widget.id}, dsfjh ${widget.topicName}'),
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
