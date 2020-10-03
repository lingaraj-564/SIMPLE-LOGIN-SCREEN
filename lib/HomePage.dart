import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MAATRAM FOUNDATION"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "MAATRAM FOUNDATION",
                style: TextStyle(color: Colors.green, fontSize: 30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
