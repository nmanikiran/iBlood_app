import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class BloodStats extends StatelessWidget {
  final chartData;

  const BloodStats({Key key,this.chartData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 32.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          '291',
                          style: TextStyle(
                              fontSize: 32.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          '-12%',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0, color: theme.primaryColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text('Avilable'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          '+49%',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0, color: theme.primaryColor),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          '481',
                          style: TextStyle(
                              fontSize: 32.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text('Requests'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Sparkline(
              sharpCorners: false,
              data: chartData,
              lineColor: theme.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
