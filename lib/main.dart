import 'package:flutter/material.dart';
import 'package:flutter_study/custom_app_bar/custom_app_bar.dart';
import 'package:flutter_study/flutter_tutorial/flutter_tutorial.dart';
import 'package:flutter_study/people_of_delivery_ui/people_of_delivery_ui.dart';
import 'package:flutter_study/reactive_web_app/reactive_web_app.dart';
import 'package:flutter_study/taling_ui/taling_ui.dart';
import 'package:flutter_study/value_address_tax/value_address_tax.dart';
import 'package:flutter_study/youtube_ui/youtube_ui.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatelessWidget {
  /// 그간 했던 프로젝트들
  List<Widget> projects = [
    CustomAppBar(),
    FlutterTutorial(),
    PeopleOfDeliveryUi(),
    ReactiveAppWeb(),
    TalingUi(),
    ValueAddressTax(),
    YoutubeUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Study by Kmeoung'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text(projects[index].toString()),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => projects[index]));
          },
        ),
        itemCount: projects.length,
      ),
      drawer: Drawer(
        child: Column(
          children: projects
              .map((project) => ListTile(
                    title: Text(project.toString()),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => project));
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
