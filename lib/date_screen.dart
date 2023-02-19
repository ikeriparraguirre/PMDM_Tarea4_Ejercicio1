import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Date extends StatefulWidget {
  @override
  State<Date> createState() => _Fecha();
}

class _Fecha extends State<Date> {
  @override
  Widget build(BuildContext context) {
    DateTime ahora = DateTime.now();
    return Container(
        child: Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        children: [
          Text(ahora.toString(), style: TextStyle(fontSize: 25)),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  ahora = DateTime.now();
                });
              },
              child: Text("Update date"))
        ],
      ),
    ));
  }
}
