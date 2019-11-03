
import 'package:flutter/material.dart';

class PageBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          height: MediaQuery.of(context).size.height * 0.30,
        ),
        Container(
          color: Colors.grey.shade100,
          height: MediaQuery.of(context).size.height * 0.70,
        )
      ],
    );
  }
}
