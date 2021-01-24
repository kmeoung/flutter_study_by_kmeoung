import 'package:flutter/material.dart';
import 'package:flutter_study/reactive_web_app/screen/screen_item.dart';
import 'package:flutter_study/reactive_web_app/screen/web/web_content_wrapper.dart';
import 'package:flutter_study/reactive_web_app/widget/widget_drawer.dart';

class ScreenDetail extends StatelessWidget {
  final int index;
  ScreenDetail({Key key, this.index}) : super(key: key);

  bool _isWeb() => identical(0, 0.0);

  @override
  Widget build(BuildContext context) {
    if (this.index == 0)
      return Scaffold(
        appBar: AppBar(
          title: Text('Detail $this.index'),
        ),
        body: Center(
          child: Text('INDEX == 0'),
        ),
      );
    // if (_isWeb() && MediaQuery.of(context).size.width >= 800)
    return WebContentWrapper(
      appBar: AppBar(
        title: Text('DetailPage ${this.index}'),
      ),
      bodyMain: _buildItemMain(),
      bodyDrawer: WidgetDrawer(),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('DetailPage ${this.index}'),
    //   ),
    //   body: _buildItemMain(),
    //   drawer: Drawer(
    //     child: WidgetDrawer(),
    //   ),
    // );
  }

  ListView _buildItemMain() {
    return ListView.builder(
      itemCount: this.index,
      itemBuilder: (context, index) => ListTile(
        title: Text('detailPage : $index'),
        subtitle: Text('listTile sub des....'),
        trailing: Icon(Icons.navigate_next),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            settings: RouteSettings(name: '/detail/${this.index}/item/$index'),
            builder: (context) => ScreenItem(itemIndex: index),
          ),
        ),
      ),
    );
  }
}
