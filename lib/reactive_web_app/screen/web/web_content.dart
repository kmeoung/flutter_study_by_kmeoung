import 'package:flutter/material.dart';
import 'package:flutter_study/reactive_web_app/screen/app/app_content.dart';
import 'package:flutter_study/reactive_web_app/widget/widget_drawer.dart';
import 'package:flutter_study/reactive_web_app/widget/widget_main.dart';

class WebContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _wrapper(context);

  Widget _wrapper(BuildContext context) {
    if (MediaQuery.of(context).size.width < 800) {
      return AppContent();
    }
    return _web();
  }

  Widget _web() => Scaffold(
        appBar: AppBar(
          title: Text('Flutter Web'),
        ),
        body: Container(
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  child: WidgetDrawer(),
                ),
              ),
              Flexible(
                flex: 3,
                child: WidgetMain(
                  itemAxisCount: 4,
                ),
              ),
            ],
          ),
        ),
      );
}
