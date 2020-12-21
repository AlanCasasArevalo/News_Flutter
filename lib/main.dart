import 'package:flutter/material.dart';
import 'package:news_flutter_app/src/pages/tabs_page.dart';
import 'package:news_flutter_app/src/pages/tabs_page1.dart';
import 'package:news_flutter_app/src/pages/tabs_page2.dart';

import 'src/themes/dark_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'tabs_page',
      theme: darkCustomTheme,
      routes: {
        TabsPage.routeName: (BuildContext context) => TabsPage(),
        TabsPage1.routeName: (BuildContext context) => TabsPage1(),
        TabsPage2.routeName: (BuildContext context) => TabsPage2()
      },
    );
  }
}
