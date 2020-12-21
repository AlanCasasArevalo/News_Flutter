import 'package:flutter/material.dart';
import 'package:news_flutter_app/src/pages/tabs_page1.dart';
import 'package:news_flutter_app/src/pages/tabs_page2.dart';
import 'package:provider/provider.dart';

class TabsPage extends StatelessWidget {
  static String routeName = 'tabs_page';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _ModelNavigation(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('News'),
        ),
        body: _CustomPageView(),
        bottomNavigationBar: _CustomButtonNavigationBar(),
      ),
    );
  }

}

class _CustomPageView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final _navigationModel = Provider.of<_ModelNavigation>(context);

    return PageView(
      controller: _navigationModel.pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        TabsPage1(),
        TabsPage2()
      ],
    );
  }
}

class _CustomButtonNavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _navigationModel = Provider.of<_ModelNavigation>(context);
    return BottomNavigationBar(
      currentIndex: _navigationModel.currentPage,
      onTap: (index) => _navigationModel.setCurrentPage = index,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Para ti' ),
        BottomNavigationBarItem(icon: Icon(Icons.public), label: 'Encabezados' ),
      ],
    );
  }
}

class _ModelNavigation with ChangeNotifier {
  int _currentPage = 0;

  PageController _pageController = PageController();

  int get currentPage => this._currentPage;
  set setCurrentPage(int value) {
    this._currentPage = value;
    _pageController.animateToPage(value, duration: Duration(milliseconds: 300), curve: Curves.easeOut);
    notifyListeners();
  }

  PageController get pageController => this._pageController;
}









