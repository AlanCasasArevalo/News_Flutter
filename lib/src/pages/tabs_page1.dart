import 'package:flutter/material.dart';

class TabsPage1 extends StatelessWidget {
  static String routeName = 'tabs_page_one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
    );
  }
}
