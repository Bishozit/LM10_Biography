import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String data = "jhh";
  void _change() {
    setState(() {
      if (data.startsWith("j"))
        data = "tanjid";
      else {
        data = "jhh";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(data),
            ElevatedButton(
                onPressed: () {
                  _change();
                },
                child: Text("CLicik"))
          ],
        ),
      ),
    );
  }
}
