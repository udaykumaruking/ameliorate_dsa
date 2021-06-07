import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin

import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser extends StatelessWidget {
  final String questionName;
  final String url;

  AddUser({
    this.questionName,
    this.url,
  });
  final sample = [
    {
      "questionName": "Construct a trie from scratch",
      "url": "https://www.geeksforgeeks.org/trie-insert-and-search/"
    },
    {
      "questionName":
          "Find shortest unique prefix for every word in a given list",
      "url":
          "https://www.geeksforgeeks.org/find-all-shortest-unique-prefixes-to-represent-each-word-in-a-given-list/"
    },
    {
      "questionName": "Word Break Problem | (Trie solution)",
      "url": "https://www.geeksforgeeks.org/word-break-problem-trie-solution/"
    },
    {
      "questionName": "Given a sequence of words, print all anagrams together",
      "url": "https://practice.geeksforgeeks.org/problems/k-anagrams-1/0"
    },
    {
      "questionName": "Implement a Phone Directory",
      "url": "https://practice.geeksforgeeks.org/problems/phone-directory/0"
    },
    {
      "questionName": "Print unique rows in a given boolean matrix",
      "url":
          "https://practice.geeksforgeeks.org/problems/unique-rows-in-boolean-matrix/1"
    }
  ];
  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference backtracking =
        FirebaseFirestore.instance.collection('trie');

    Future<void> addArray() async {
      // Call the user's CollectionReference to add a new user
      sample.forEach((element) {
        return backtracking
            .add({
              'questionName': element.values.first, // John Doe
              'url': element.values.last, // Stokes and Sons
            })
            .then((value) => print("User Added"))
            .catchError((error) => print("Failed to add user: $error"));
      });
    }

    return TextButton(
      // onPressed: addArray,
      onPressed: () {
        addArray();
      },
      child: Text(
        "Add User",
      ),
    );
  }
}
