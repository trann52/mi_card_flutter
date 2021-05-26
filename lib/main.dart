import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// margin is used for the outside of the widget
// padding is used for the inside of the widget
//crossAxisAlignment will align to the children at the right edge (when using CrossAxisAlignment.end)
// CrossAxisAlignment.stretch will stretch all the children in the column to the size of the phone.
// If Row, height is no longer needed
// If Column, width is no longer needed

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          // Container can only have 1 child
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100.0,
                color: Color(0xffff0000),
                child: Text('Container 1'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Color(0xffffcc00),
                    child: Text('Container 2'),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Color(0xff33cc33),
                    child: Text('Container 2.5'),
                  ),
                ],
              ),
              Container(
                width: 100.0,
                color: Color(0xff3399ff),
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
