import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  @override
  State<SwitchScreen> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchScreen> {
  bool light = true;
  bool active = true;
  String estado = "OK";
  @override
  Widget build(BuildContext context) {
    final MaterialStateProperty<Color?> trackColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        // Track color when the switch is selected.
        if (states.contains(MaterialState.selected)) {
          return Colors.blue;
        }
        return null;
      },
    );
    final MaterialStateProperty<Color?> overlayColor =
        MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        // Material color when switch is selected.
        if (states.contains(MaterialState.selected)) {
          return Colors.blue.withOpacity(0.54);
        }
        // Material color when switch is disabled.
        if (states.contains(MaterialState.disabled)) {
          return Colors.grey.shade400;
        }
        return null;
      },
    );

    return Container(
        child: Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        children: [
          Text(estado, style: TextStyle(fontSize: 30)),
          Switch(
            value: light,
            overlayColor: overlayColor,
            trackColor: trackColor,
            thumbColor: const MaterialStatePropertyAll<Color>(Colors.black),
            onChanged: (bool value) {
              // This is called when the user toggles the switch.
              active = value;

              setState(() {
                light = value;
                if (estado == "OK") {
                  estado = "NOK";
                } else {
                  estado = "OK";
                }
              });
            },
          )
        ],
      ),
    ));
  }
}
