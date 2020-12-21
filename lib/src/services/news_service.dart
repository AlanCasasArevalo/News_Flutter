import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:news_flutter_app/src/models/article_model.dart';
import 'package:news_flutter_app/src/models/category_model.dart';
import 'package:news_flutter_app/src/models/news_models.dart';

class NewsService with ChangeNotifier {
  List<Article> headlines = [];

  List<CategoryModel> categories = [
    CategoryModel(FontAwesomeIcons.building, 'business'),
    CategoryModel(FontAwesomeIcons.tv, 'entertainment'),
    CategoryModel(FontAwesomeIcons.addressCard, 'general'),
    CategoryModel(FontAwesomeIcons.headSideVirus, 'health'),
    CategoryModel(FontAwesomeIcons.vials, 'science'),
    CategoryModel(FontAwesomeIcons.volleyballBall, 'sports'),
    CategoryModel(FontAwesomeIcons.mobile, 'technology'),
  ];

  final _baseURL = 'https://newsapi.org/v2';
  final _apiKey = '&apiKey=YOUR_API_KEY';

  NewsService() {
    getTopHeadlines();
  }

  getTopHeadlines () async {
    final url = '$_baseURL/top-headlines?country=co&category=general$_apiKey';
    final response = await http.get(url);
    final newsResponse = newsModelFromJson(response.body);

    this.headlines.addAll(newsResponse.articles);
    notifyListeners();
  }
}