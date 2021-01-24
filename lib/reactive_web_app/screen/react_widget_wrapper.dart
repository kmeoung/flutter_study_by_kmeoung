import 'package:flutter/material.dart';

class ReactWidgetWrapper extends StatelessWidget {
  final AppBar appBar;
  final Widget bodyMain;
  final Widget bodyDrawer;

  ReactWidgetWrapper(
      {Key key,
      @required this.appBar,
      @required this.bodyMain,
      @required this.bodyDrawer})
      : super(key: key);

  bool _isWeb() => identical(0, 0.0);

  @override
  Widget build(BuildContext context) {
    if (_isWeb() && MediaQuery.of(context).size.width >= 800) {
      return Scaffold(
        appBar: appBar,
        body: Row(
          children: [
            Flexible(flex: 1, child: Container(child: bodyDrawer)),
            Flexible(flex: 3, child: bodyMain),
          ],
        ),
      );
    }
    return Scaffold(
      appBar: appBar,
      body: bodyMain,
      drawer: Drawer(
        child: bodyDrawer,
      ),
    );
  }
}
