import 'package:flutter/material.dart';

class PVP extends StatelessWidget {
  const PVP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tactical Challenge")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Back to Main Page")
        )
      ), // Elevated Button // Center
    ); // Scaffold
  }
}