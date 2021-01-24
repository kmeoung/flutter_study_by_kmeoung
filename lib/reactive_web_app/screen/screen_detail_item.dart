import 'package:flutter/material.dart';

class ScreenDetailItem extends StatelessWidget {
  final int index;
  final int itemIndex;
  ScreenDetailItem({Key key, this.index, this.itemIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('A'));
  }
}
