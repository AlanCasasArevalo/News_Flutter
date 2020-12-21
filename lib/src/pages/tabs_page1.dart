import 'package:flutter/material.dart';
import 'package:news_flutter_app/src/services/news_service.dart';
import 'package:news_flutter_app/src/widgets/news_list.dart';
import 'package:provider/provider.dart';

class TabsPage1 extends StatelessWidget {
  static String routeName = 'tabs_page_one';

  @override
  Widget build(BuildContext context) {
    final headlines = Provider.of<NewsService>(context).headlines;
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      body: NewsList( headlines ),
    );
  }
}
