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
      "questionName": "Activity Selection Problem",
      "url":
          "https://practice.geeksforgeeks.org/problems/n-meetings-in-one-room/0"
    },
    {
      "questionName": "Job SequencingProblem",
      "url":
          "https://practice.geeksforgeeks.org/problems/job-sequencing-problem/0"
    },
    {
      "questionName": "Huffman Coding",
      "url": "https://practice.geeksforgeeks.org/problems/huffman-encoding/0"
    },
    {
      "questionName": "Water Connection Problem",
      "url":
          "https://practice.geeksforgeeks.org/problems/water-connection-problem/0"
    },
    {
      "questionName": "Fractional Knapsack Problem",
      "url": "https://practice.geeksforgeeks.org/problems/fractional-knapsack/0"
    },
    {
      "questionName": "Greedy Algorithm to find Minimum number of Coins",
      "url": "https://practice.geeksforgeeks.org/problems/coin-piles/0"
    },
    {
      "questionName": "Maximum trains for which stoppage can be provided",
      "url":
          "https://www.geeksforgeeks.org/maximum-trains-stoppage-can-provided/"
    },
    {
      "questionName": "Minimum Platforms Problem",
      "url": "https://practice.geeksforgeeks.org/problems/minimum-platforms/0"
    },
    {
      "questionName":
          "Buy Maximum Stocks if i stocks can be bought on i-th day",
      "url":
          "https://www.geeksforgeeks.org/buy-maximum-stocks-stocks-can-bought-th-day/"
    },
    {
      "questionName":
          "Find the minimum and maximum amount to buy all N candies",
      "url": "https://practice.geeksforgeeks.org/problems/shop-in-candy-store/0"
    },
    {
      "questionName":
          "Minimize Cash Flow among a given set of friends who have borrowed money from each other",
      "url":
          "https://www.geeksforgeeks.org/minimize-cash-flow-among-given-set-friends-borrowed-money/"
    },
    {
      "questionName": "Minimum Cost to cut a board into squares",
      "url": "https://www.geeksforgeeks.org/minimum-cost-cut-board-squares/"
    },
    {
      "questionName": "Check if it is possible to survive on Island",
      "url": "https://www.geeksforgeeks.org/survival/"
    },
    {
      "questionName": "Find maximum meetings in one room",
      "url": "https://www.geeksforgeeks.org/find-maximum-meetings-in-one-room/"
    },
    {
      "questionName": "Maximum product subset of an array",
      "url": "https://www.geeksforgeeks.org/maximum-product-subset-array/"
    },
    {
      "questionName": "Maximize array sum after K negations",
      "url":
          "https://practice.geeksforgeeks.org/problems/maximize-sum-after-k-negations/0"
    },
    {
      "questionName": "Maximize the sum of arr[i]*i",
      "url":
          "https://practice.geeksforgeeks.org/problems/maximize-arrii-of-an-array/0"
    },
    {
      "questionName": "Maximum sum of absolute difference of an array",
      "url":
          "https://www.geeksforgeeks.org/maximum-sum-absolute-difference-array/"
    },
    {
      "questionName":
          "Maximize sum of consecutive differences in a circular array",
      "url": "https://practice.geeksforgeeks.org/problems/swap-and-maximize/0"
    },
    {
      "questionName":
          "Minimum sum of absolute difference of pairs of two arrays",
      "url":
          "https://www.geeksforgeeks.org/minimum-sum-absolute-difference-pairs-two-arrays/"
    },
    {
      "questionName": "Program for Shortest Job First (or SJF) CPU Scheduling",
      "url":
          "https://www.geeksforgeeks.org/program-for-shortest-job-first-or-sjf-cpu-scheduling-set-1-non-preemptive/"
    },
    {
      "questionName":
          "Program for Least Recently Used (LRU) Page Replacement algorithm",
      "url": "https://practice.geeksforgeeks.org/problems/page-faults-in-lru/0"
    },
    {
      "questionName":
          "Smallest subset with sum greater than all other elements",
      "url":
          "https://www.geeksforgeeks.org/smallest-subset-sum-greater-elements/"
    },
    {
      "questionName": "Chocolate Distribution Problem",
      "url":
          "https://practice.geeksforgeeks.org/problems/chocolate-distribution-problem/0"
    },
    {
      "questionName": "DEFKIN -Defense of a Kingdom",
      "url": "https://www.spoj.com/problems/DEFKIN/"
    },
    {
      "questionName": "DIEHARD -DIE HARD",
      "url": "https://www.spoj.com/problems/DIEHARD/"
    },
    {
      "questionName": "GERGOVIA -Wine trading in Gergovia",
      "url": "https://www.spoj.com/problems/GERGOVIA/"
    },
    {
      "questionName": "Picking Up Chicks",
      "url": "https://www.spoj.com/problems/GCJ101BB/"
    },
    {
      "questionName": "CHOCOLA - Chocolate",
      "url": "https://www.spoj.com/problems/CHOCOLA/"
    },
    {
      "questionName": "ARRANGE -Arranging Amplifiers",
      "url": "https://www.spoj.com/problems/ARRANGE/"
    },
    {
      "questionName": "K Centers Problem",
      "url":
          "https://www.geeksforgeeks.org/k-centers-problem-set-1-greedy-approximate-algorithm/"
    },
    {
      "questionName": "Minimum Cost of ropes",
      "url":
          "https://practice.geeksforgeeks.org/problems/minimum-cost-of-ropes/0"
    },
    {
      "questionName":
          "Find smallest number with given number of digits and sum of digits",
      "url": "https://practice.geeksforgeeks.org/problems/smallest-number5829/1"
    },
    {
      "questionName":
          "Rearrange characters in a string such that no two adjacent are same",
      "url":
          "https://practice.geeksforgeeks.org/problems/rearrange-characters/0"
    },
    {
      "questionName": "Find maximum sum possible equal sum of three stacks",
      "url":
          "https://www.geeksforgeeks.org/find-maximum-sum-possible-equal-sum-three-stacks/"
    }
  ];
  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference backtracking =
        FirebaseFirestore.instance.collection('greedy');

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
