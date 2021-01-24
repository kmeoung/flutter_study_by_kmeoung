import 'package:flutter/material.dart';
import 'package:flutter_study/reactive_web_app/screen/react_widget_wrapper.dart';
import 'package:flutter_study/reactive_web_app/widget/widget_drawer.dart';

class ScreenItem extends StatelessWidget {
  final int itemIndex;

  ScreenItem({Key key, @required this.itemIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) => ReactWidgetWrapper(
        appBar: AppBar(
          title: Text('React widget'.toUpperCase() + ' : ${this.itemIndex}'),
        ),
        bodyMain: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) =>
              Expanded(child: Text('Hello $index')),
        ),
        bodyDrawer: Container(
          child: WidgetDrawer(),
        ),
      );
}
