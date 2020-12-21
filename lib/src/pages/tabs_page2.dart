import 'package:flutter/material.dart';
import 'package:news_flutter_app/src/models/category_model.dart';
import 'package:news_flutter_app/src/services/news_service.dart';
import 'package:news_flutter_app/src/utils/utils.dart';
import 'package:provider/provider.dart';

class TabsPage2 extends StatelessWidget {
  static String routeName = 'tabs_page_two';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child: _CategoryList()),
          ],
        ),
      ),
    );
  }
}

class _CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _categories = Provider.of<NewsService>(context).categories;

    return ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: _categories.length,
        itemBuilder: (BuildContext context, index) {
        final capitalizedName = getCapitalized(_categories[index].name);
          return Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  _CategoryIconButton(_categories[index]),
                  SizedBox(height: 5,),
                  Text(capitalizedName),
                ],
              )
          );
        }
    );
  }
}

class _CategoryIconButton extends StatelessWidget {

  final CategoryModel _model;

  const _CategoryIconButton(this._model);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        width: 40,
          height: 40,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white
          ),
          child: Icon( _model.icon, color: Colors.black54, )
      ),
    );
  }
}
