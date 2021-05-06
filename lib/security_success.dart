import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:idcardscanner/outing_leave.dart';

class Secsuccess extends StatefulWidget {
  @override
  _SecsuccessState createState() => _SecsuccessState();
}

class _SecsuccessState extends State<Secsuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('ID Card Scanner'),
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Center(
            child: Text(
              'SECURITY',
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

                RaisedButton.icon(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Outing()));
                },
                  icon: Icon(Icons.call_missed_outgoing),
                  label: Text('Outing'),
                ),
                SizedBox(height: 30),

                CircleAvatar(
                  backgroundImage: AssetImage('assets/image.jpg'),
                  radius: 50.0,
                ),

                SizedBox(height: 30),
                RaisedButton.icon(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Leave()));
                },
                  icon: Icon(Icons.time_to_leave),
                  label: Text('Leave'),
                ),
              ],
            ),
          )
        ],
      ),

    );
  }
}