import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  static String routeName = 'tabs_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      body: _buildPageView(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Para ti' ),
        BottomNavigationBarItem(icon: Icon(Icons.public), label: 'Encabezados' ),
      ],
    );
  }

  PageView _buildPageView() {
    return PageView(
      // physics: BouncingScrollPhysics(),
      physics: NeverScrollableScrollPhysics(),
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.green,
        ),
      ],
    );
  }
}
