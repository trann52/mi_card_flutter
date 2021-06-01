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
        backgroundColor: Color(0xffff6699),
        body: SafeArea(
            // Container can only have 1 child
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/me.jpg'),
            ),
            Text(
              'Nicky Tran',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Color(0xffffffff),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'DIGITAL ANALYST',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 20.0,
                color: Color(0xffffb3cc),
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Color(0xffbdbdbd),
              ),
            ),
            Card(
              color: Color(0xffffb3cc),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Color(0xff212121),
                ),
                title: Text(
                  '+447 592 801 761',
                  style: TextStyle(
                      color: Color(0xff212121),
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              color: Color(0xffffb3cc),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Color(0xff212121),
                ),
                title: Text(
                  'tran.nicky52@gmail.com',
                  style: TextStyle(
                      color: Color(0xff212121),
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
