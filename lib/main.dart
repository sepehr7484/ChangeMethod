import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool signin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Icon(
                CupertinoIcons.ant_circle,
                color: Colors.orange,
                size: 80,
              ),
              boxUi(),
            ],
          ),
        ),
      ),
    );
  }

  void changeState() {
    if (signin) {
      setState(() {
        signin = false;
      });
    } else
      setState(() {
        signin = true;
      });
  }

  Widget boxUi() {
    return Column(
      children: [
        Card(
          elevation: 10.0,
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.white12, width: 2.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                    height: 70,
                    onPressed: () => changeState(),
                    child: Text(
                      'Happy',
                      style: TextStyle(
                          color: signin == true ? Colors.blue : Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                FlatButton(
                    height: 70,
                    onPressed: () => changeState(),
                    child: Text(
                      ' Sad',
                      style: TextStyle(
                          color: signin != true ? Colors.blue : Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
              ],
            ),
          ),
        ),
        signin == true ? blue() : red(),
      ],
    );
  }

  Widget blue() {
    return Container(
      width: 250,
      height: 50,
      color: Colors.blue,
      child: Center(
        child: Icon(
          CupertinoIcons.smiley,
          size: 35,
        ),
      ),
    );
  }

  Widget red() {
    return Container(
      width: 250,
      height: 50,
      color: Colors.red,
      child: Center(
        child: Icon(
          CupertinoIcons.smiley_fill,
          //
          size: 30,
        ),
      ),
    );
  }
}
