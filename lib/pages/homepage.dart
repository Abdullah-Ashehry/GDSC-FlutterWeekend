import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  String Name = "Abdullah";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Hello,',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const Text(
              "Abdullah",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Card(
              child: Column(children: [
                Row(children: [
                  Text(
                    'Your Daily Plan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  )
                ]),
                Row(children: [
                  Text(
                    '0 out of 1 done,',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  )
                ])
              ]),
            )
          ],
        ),
      ),
    );
  }
}
