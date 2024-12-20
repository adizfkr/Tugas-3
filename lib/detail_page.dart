// detail_page.dart
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String description;

  DetailPage({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(description, style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
