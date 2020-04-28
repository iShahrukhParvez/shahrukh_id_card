import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
  home: ShahrukhCard(),
));

class ShahrukhCard extends StatefulWidget {
  @override
  _ShahrukhCardState createState() => _ShahrukhCardState();
}

class _ShahrukhCardState extends State<ShahrukhCard> {

  int expertLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('PRIYA ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            expertLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/1.JPG'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.grey,
              letterSpacing: 2.0,),
            ),
            SizedBox(height: 10.0),
            Text(
              'PRIYA DARSHINI V.L',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'DESIGNATION',
              style: TextStyle(color: Colors.grey,
                letterSpacing: 2.0,),
            ),
            SizedBox(height: 10.0),
            Text(
              'ENGINEERING STUDENT',
              style: TextStyle(color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'EXPERT LEVEL',
              style: TextStyle(color: Colors.grey,
                letterSpacing: 2.0,),
            ),
            SizedBox(height: 10.0),
            Text(
              '$expertLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'vl.priyavishnu15@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,50,0,0),
              child: Center(
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Click Here to Know More About Me'),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


