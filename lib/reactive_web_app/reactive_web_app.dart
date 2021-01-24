import 'package:flutter/material.dart';
import 'package:flutter_study/reactive_web_app/screen/screen_a.dart';
import 'package:flutter_study/reactive_web_app/screen/screen_detail.dart';
import 'package:flutter_study/reactive_web_app/screen/screen_detail_item.dart';
import 'package:flutter_study/reactive_web_app/screen/screen_main.dart';
import 'package:flutter_study/reactive_web_app/screen/screen_no_page.dart';

class ReactiveAppWeb extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          // 기본 페이지 경로
          return MaterialPageRoute(
            settings: RouteSettings(name: '/'),
            maintainState: false,
            builder: (context) => ScreenMain(),
          );
        }
        if (settings.name == '/a') {
          // 테스트 페이지 경로
          return MaterialPageRoute(
            settings: RouteSettings(name: '/a'),
            maintainState: false,
            builder: (context) => ScreenA(),
          );
        }

        Uri uri =
            Uri.parse(settings.name); // uri 는 입력하는 url 경로를 '/'로 나누어 배열로 반환함
        print(uri.pathSegments.first);

        if (uri.pathSegments.first == 'detail') {
          // 상세 페이지 나누기
          print(uri.pathSegments);
          if (uri.pathSegments.length < 2 ||
              uri.pathSegments[1].toString().isEmpty) {
            // url을 제대로 입력하지 않은 경우를 대비함
            return MaterialPageRoute(
              settings: RouteSettings(name: '/'),
              maintainState: false,
              builder: (context) => ScreenMain(),
            );
          } else {
            int index = int.parse(uri.pathSegments[1].toString());
            if (uri.pathSegments.length < 4 ||
                uri.pathSegments[3].toString().isEmpty) {
              return MaterialPageRoute(
                settings: RouteSettings(arguments: '/detail/$index'),
                maintainState: false,
                builder: (context) => ScreenDetail(index: index),
              );
            }

            int itemIndex = int.parse(uri.pathSegments[3].toString());
            return MaterialPageRoute(
              settings: RouteSettings(name: 'detail/$index/item/$itemIndex'),
              maintainState: false,
              builder: (context) => ScreenDetailItem(
                index: index,
                itemIndex: itemIndex,
              ),
            );
          }
        }

        return MaterialPageRoute(
            settings: RouteSettings(name: '/no'),
            maintainState: false,
            builder: (context) => ScreenNoPage());
      },
      title: 'Flutter Demo',
    );
  }
}
