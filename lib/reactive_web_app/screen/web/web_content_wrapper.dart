import 'package:flutter/material.dart';

class WebContentWrapper extends StatelessWidget {
  final AppBar appBar;
  final Widget bodyMain;
  final Widget bodyDrawer;

  WebContentWrapper(
      {Key key,
      @required this.appBar,
      @required this.bodyDrawer,
      @required this.bodyMain})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: appBar,
        body: Row(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  child: bodyDrawer,
                )),
            Flexible(flex: 3, child: bodyMain),
          ],
        ),
      );
}
