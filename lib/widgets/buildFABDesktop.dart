import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class BuildFAB extends StatelessWidget {
  const BuildFAB({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FloatingActionButton.extended(
              onPressed: () {
                launch('https://github.com/udaykumaruking/ameliorate_dsa/');
              },
              icon: Icon(Icons.code),
              label: Text('View Source Code'),
              backgroundColor: Colors.black,
              hoverColor: kOrange.withOpacity(0.2),
            ),
            FloatingActionButton.extended(
              onPressed: () {
                launch(
                    'https://github.com/udaykumaruking/ameliorate_dsa/issues/new?assignees=&labels=&template=feature_request.md&title=  ');
              },
              icon: Icon(Icons.upgrade),
              label: Text('Request Feature'),
              backgroundColor: Colors.blueAccent,
              hoverColor: kOrange.withOpacity(0.2),
            ),
            FloatingActionButton.extended(
              onPressed: () {
                launch(
                    'https://github.com/udaykumaruking/ameliorate_dsa/issues/new?assignees=&labels=&template=bug_report.md&title=');
              },
              icon: Icon(Icons.warning),
              label: Text('Raise an Issue'),
              backgroundColor: Colors.red,
              hoverColor: kOrange.withOpacity(0.2),
            ),
          ],
        ),
      ),
    );
  }
}
