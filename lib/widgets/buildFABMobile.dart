import 'package:ameliorate_dsa/constants.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class BuildFABMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        launch('https://github.com/udaykumaruking/ameliorate_dsa/');
      },
      icon: Icon(Icons.code),
      label: Text('View Source Code'),
      backgroundColor: Colors.black,
      hoverColor: kOrange.withOpacity(0.2),
    );
  }
}
