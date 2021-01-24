import 'package:flutter/material.dart';
import 'package:flutter_study/reactive_web_app/screen/screen_detail.dart';

class WidgetMain extends StatelessWidget {
  final int itemAxisCount;

  WidgetMain({Key key, this.itemAxisCount = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: this.itemAxisCount,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) => GestureDetector(
          child: _gridItem(index: index),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            maintainState: false,
            settings: RouteSettings(name: '/detail/$index'),
            builder: (context) => ScreenDetail(
              index: index,
            ),
          )),
        ),
      ),
    );
  }

  _gridItem({int index}) => GridTile(
        child: Container(
          color: Colors.accents[index % Colors.accents.length],
          child: Center(
            child: Text(
              index.toString(),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
}
