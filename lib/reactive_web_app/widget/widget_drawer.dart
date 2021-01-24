import 'package:flutter/material.dart';
import 'package:flutter_study/reactive_web_app/screen/screen_main.dart';

class WidgetDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: ListView(
        children: [
          ListTile(
            title: Text('Home'),
            onTap: () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  settings: RouteSettings(arguments: '/'),
                  maintainState: false,
                  builder: (context) => ScreenMain(),
                ),
                (route) => false),
          )
        ],
      ),
    );
  }
}
