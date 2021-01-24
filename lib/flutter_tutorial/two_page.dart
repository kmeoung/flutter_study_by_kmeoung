import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  final String receiveData;
  TwoPage({Key key, @required this.receiveData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
        leading: Spacer(),
      ),
      body: Center(
        child: Column(
          children: [
            Text('$receiveData'),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop('2페이지에서 넘어온 데이터');
              },
              child: Text('뒤로가기 버튼(데이터 뒷 페이지로 보내기)'),
            ),
          ],
        ),
      ),
    );
  }
}
