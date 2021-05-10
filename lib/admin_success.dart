import 'package:flutter/material.dart';
import 'package:idcardscanner/auth.dart';

class Adminsuccess extends StatefulWidget {
  @override
  _AdminsuccessState createState() => _AdminsuccessState();
}

class _AdminsuccessState extends State<Adminsuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('ID Card Scanner'),
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await AuthService().signout();
              },
              icon: Icon(Icons.person),
              label: Text('Signout'))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Colors.black, Colors.grey, Colors.black])),
        child: Column(
          children: [
            SizedBox(height: 30),
            Center(
              child: Text(
                'ADMIN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/image.jpg'),
                    radius: 50.0,
                  ),
                  SizedBox(height: 30),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.stacked_bar_chart),
                    label: Text('Outing Statistics'),
                  ),
                  SizedBox(height: 30),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/image.jpg'),
                    radius: 50.0,
                  ),
                  SizedBox(height: 30),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.stacked_bar_chart),
                    label: Text('Leave Statistics'),
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
