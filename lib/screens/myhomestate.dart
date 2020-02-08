
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/settings.dart';

class MyHomeState extends State<SettingsScreen> {
  // Generate dialog
  AlertDialog dialog = AlertDialog(
      content: Text(
        "Hello World!",
        style: TextStyle(fontSize: 30.0),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Using Alert Dialog"),
        ),
        body: Container(
          child: Center(
            child: RaisedButton(
                child: Text("Hit to alert!"),
                // On press of the button
                onPressed: () {
                  // Show dialog
                  showDialog(context: context,
                      builder: (BuildContext context) => dialog);
                }),
          ),
        ));
  }
}