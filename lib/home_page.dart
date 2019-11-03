import 'package:flutter/material.dart';
import 'package:iblood_app/blood_request.dart';
import 'package:iblood_app/blood_starts.dart';
import 'package:iblood_app/data.dart';
import 'package:iblood_app/home_page_background.dart';
import 'package:iblood_app/models/Request.dart';

class HomePage extends StatefulWidget {
  
  final String title;
  HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            new PageBackground(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[
                  HeaderWidget(title: widget.title),
                  BloodStats(chartData: Data.chart),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18.0, horizontal: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Recent Updates'),
                        Text(
                          'View All',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: List.generate(
                        Data.requests.length,
                        (i) => BloodRequest(
                            item: Request.fromJson(Data.requests[i]))).toList(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  
  final String title;
  const HeaderWidget({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            child: CircleAvatar(
              radius: 18.0,
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
            padding: EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}
