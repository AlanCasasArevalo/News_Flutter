import 'package:flutter/material.dart';
import 'package:news_flutter_app/src/services/news_service.dart';
import 'package:news_flutter_app/src/widgets/news_list.dart';
import 'package:provider/provider.dart';

class TabsPage1 extends StatefulWidget {
  static String routeName = 'tabs_page_one';

  @override
  _TabsPage1State createState() => _TabsPage1State();
}

class _TabsPage1State extends State<TabsPage1> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final headlines = Provider.of<NewsService>(context).headlines;
    //      body: NewsList( headlines ),
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      body: (headlines.length == 0)  ? Center( child: CircularProgressIndicator(),) : NewsList( headlines )
      ,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
