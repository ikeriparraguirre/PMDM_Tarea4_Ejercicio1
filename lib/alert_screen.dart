import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(children: [
        TextButton(
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('To state or not to state'),
              content: Text(
                  "I understand i should never use a StatefullWidget when a Stateless can do the job"),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, ''),
                  child: const Text(''),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Yes :)'),
                  child: const Text('Yes :)'),
                ),
              ],
            ),
          ),
          child: const Text('Show Dialog'),
        )
      ]),
    ));
  }
}
