import 'package:flutter/material.dart';
import 'package:news_flutter_app/src/models/article_model.dart';
import 'package:news_flutter_app/src/themes/dark_theme.dart';

class NewsList extends StatelessWidget {
  final List<Article> news;

  const NewsList(this.news);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.news.length,
      itemBuilder: (BuildContext context, int index) {
        return _NewCard(
          index: index,
          newItem: this.news[index],
        );
      },
    );
  }
}

class _NewCard extends StatelessWidget {
  final Article newItem;
  final int index;

  const _NewCard({@required this.newItem, @required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _TopBarCard(
          newItem: newItem,
          index: index,
        ),
        _TitleCard(
          newItem: newItem,
          index: index,
        ),
        _ImageCard(
          newItem: newItem,
          index: index,
        ),
        _BodyCard(
          newItem: newItem,
        ),
        _ButtonsCard(),
        SizedBox(height: 16,),
        Divider(),
      ],
    );
  }
}

class _TopBarCard extends StatelessWidget {
  final Article newItem;
  final int index;

  const _TopBarCard({@required this.newItem, @required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Text(
            '${index + 1}. ',
            style: TextStyle(color: darkCustomTheme.accentColor, fontSize: 8),
          ),
          Text(
            newItem.source.name,
            style: TextStyle(color: Colors.white, fontSize: 8),
          ),
        ],
      ),
    );
  }
}

class _TitleCard extends StatelessWidget {
  final Article newItem;
  final int index;

  const _TitleCard({@required this.newItem, @required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        '${newItem.title}',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  final Article newItem;
  final int index;

  const _ImageCard({@required this.newItem, @required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60), bottomRight: Radius.circular(60)),
        child: Container(
          child: (newItem.urlToImage != null)
              ? FadeInImage(
                  placeholder: AssetImage('assets/loading.gif'),
                  image: NetworkImage(newItem.urlToImage),
                )
              : Image(
                  image: AssetImage('assets/no_image.png'),
                ),
        ),
      ),
    );
  }
}

class _BodyCard extends StatelessWidget {
  final Article newItem;

  const _BodyCard({@required this.newItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: (newItem.description != null)
          ? Text(
              newItem.description,
            )
          : Text(''),
    );
  }
}

class _ButtonsCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RawMaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              fillColor: darkCustomTheme.accentColor,
              child: Icon(Icons.star_border),
              onPressed: (){}
          ),
          SizedBox(width: 20,),
          RawMaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              fillColor: Colors.blueAccent,
              child: Icon(Icons.more),
              onPressed: (){}
          ),
        ],
      ),
    );
  }
}
