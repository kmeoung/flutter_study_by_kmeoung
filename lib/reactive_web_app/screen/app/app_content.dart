import 'package:flutter/material.dart';
import 'package:flutter_study/reactive_web_app/widget/widget_drawer.dart';
import 'package:flutter_study/reactive_web_app/widget/widget_main.dart';

class AppContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: WidgetMain(),
      drawer: Drawer(
        child: WidgetDrawer(),
      ),
    );
  }
}
