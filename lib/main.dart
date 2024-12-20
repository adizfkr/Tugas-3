// main.dart
import 'package:flutter/material.dart';
import 'news_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NewsPage(),
    );
  }
}

// news_page.dart
class NewsPage extends StatelessWidget {
  final List<Map<String, String>> newsList = [
    {
      'image': 'https://akcdn.detik.net.id/community/media/visual/2022/12/31/suasana-malam-tahun-baru-2023-di-monas-1_169.jpeg?w=620',
      'title': 'Spot Malam Tahun Baru 2025 di Jakarta!',
      'description': 'Monumen Nasional (Monas)',
    },
    {
      'image': 'https://akcdn.detik.net.id/community/media/visual/2019/01/01/108da777-e5a4-4fc4-9f03-45d254fd0ab3_169.jpeg?w=700&q=90',
      'title': 'Pemprov DKI Gelar Perayaan Malam Tahun Baru di Bundaran HI',
      'description': 'Pesta Tahun Baru di Bundaran HI',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita Terkini'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.network(
                      newsList[index]['image']!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          newsList[index]['title']!,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          newsList[index]['description']!,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
