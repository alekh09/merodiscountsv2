import 'package:flutter/material.dart';


class Testpage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Multiple Containers Example'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text('Container 1', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.green,
              child: Center(
                child: Text('Container 2', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.orange,
              child: Center(
                child: Text('Container 3', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
