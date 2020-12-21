import 'package:flutter/material.dart';
import 'package:news_flutter_app/src/models/article_model.dart';

class NewsService with ChangeNotifier {
  List<Article> headlines = [];

  NewsService() {
    getTopHeadlines();
  }

  getTopHeadlines () {
    print('Loading headlines ......');
  }
}