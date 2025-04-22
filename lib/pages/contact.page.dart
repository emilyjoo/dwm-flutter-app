import 'package:flutter/material.dart';
class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text("Contact"),
      ),
    );
  }
}
