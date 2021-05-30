import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff34456e),
      child: Center(
        child: SpinKitWave(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
