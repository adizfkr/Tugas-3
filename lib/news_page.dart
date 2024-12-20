// news_page.dart
import 'package:flutter/material.dart';
import 'detail_page.dart';

class NewsPage extends StatelessWidget {
  final List<Map<String, String>> newsList = [
    {'title': 'Flutter 3 Released!', 'description': 'Explore the new features of Flutter 3.'},
    {'title': 'Dart 3 Announced', 'description': 'Dart 3 is faster and more secure.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News')),
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(newsList[index]['title']!),
            subtitle: Text(newsList[index]['description']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: newsList[index]['title']!,
                    description: newsList[index]['description']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
