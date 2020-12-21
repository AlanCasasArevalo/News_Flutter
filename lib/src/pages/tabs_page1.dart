import 'package:flutter/material.dart';
import 'package:news_flutter_app/src/services/news_service.dart';

class TabsPage1 extends StatelessWidget {
  static String routeName = 'tabs_page_one';

  @override
  Widget build(BuildContext context) {
    final _newsService = NewsService();
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
    );
  }
}
