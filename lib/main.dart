import 'package:flutter/material.dart';
import 'alert_screen.dart';
import 'date_screen.dart';
import 'switch_screen.dart';
import 'slider_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Stateless vs Statefull',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Stateless vs Statefull'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text("Stateless vs Statefull"),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.edit_calendar), text: "Date"),
                Tab(icon: Icon(Icons.warning), text: "Alert"),
                Tab(icon: Icon(Icons.picture_in_picture), text: "Switch"),
                Tab(icon: Icon(Icons.pets), text: "Slider"),
              ],
            ),
          ),
          body: TabBarView(
            children: [Date(), Alert(), SwitchScreen(), SliderScreen()],
          ),
        ),
      ),
    );
  }
}
