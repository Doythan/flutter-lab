import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Woman"),
                    Text("Kids"),
                    Text("Shoes"),
                    Text("Bag"),
                  ],
                ),
              ),
              Expanded(child: Placeholder(), flex: 1),
              Expanded(child: Placeholder(), flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
