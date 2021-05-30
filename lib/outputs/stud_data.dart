import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:idcardscanner/misc/user.dart';
import 'package:idcardscanner/misc/loading.dart';
import 'package:idcardscanner/outputs/paginated_table.dart';

class StudData extends StatefulWidget {
  @override
  _StudDataState createState() => _StudDataState();
}

class _StudDataState extends State<StudData> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<QuerySnapshot>(context);

    Future<List<StudentOut>> outing() async {
      List<StudentOut> studData = [];
      for (var i in data.documents) {
        DocumentSnapshot snap = await Firestore.instance
            .collection('Student_Ph')
            .document(i.documentID)
            .get();
        try {
          studData.add(StudentOut(
              classR: snap.data['class'],
              id: snap.data['id'],
              name: snap.data['name'],
              gender: snap.data['gender'],
              phone: snap.data['phone'],
              room: snap.data['room'],
              outTime: i.data['OutTime'],
              inTime: i.data['InTime'],
              scannedBy: i.data['ScannedBy']));
        } catch (e) {
          print(e);
        }
      }
      return studData;
    }

    return FutureBuilder<List<StudentOut>>(
      future: outing(),
      builder:
          (BuildContext context, AsyncSnapshot<List<StudentOut>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Loading();
        } else {
          if (snapshot.hasData)
            return MyTable(
              studData: snapshot.data,
              columns: [
                'ID',
                'Name',
                'Gender',
                'Phone',
                'Class',
                'Room',
                'OutTime',
                'Intime',
                'Scanned By'
              ],
            );
          return Container();
        }
      },
    );
  }
}
