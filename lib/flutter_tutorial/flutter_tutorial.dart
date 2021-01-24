import 'package:flutter/material.dart';
import 'package:flutter_study/flutter_tutorial/two_page.dart';

class FlutterTutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () async {
                String _twoPageData = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return TwoPage(
                        receiveData: '1페이지에서 보낸 데이터',
                      );
                    },
                  ),
                );
                showDialog(
                  context: context,
                  useSafeArea: true,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('$_twoPageData'),
                      title: Text('두번째 페이지에서 넘어옴 대박'),
                    );
                  },
                );
              })
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text('ListView'),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(right: 10.0),
                    width: 180,
                    height: 180,
                    color: Colors.accents[index % Colors.accents.length],
                    child: Center(
                      child: Text('ListView $index'),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text('GridView'),
              ),
              Container(
                height: 400,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) => Container(
                    width: 180,
                    height: 180,
                    color: Colors.accents[index % Colors.accents.length],
                    child: Center(
                      child: Text('GridView $index'),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                color: Colors.blue[400],
                height: 1000.0,
                child: Center(
                  child: Text(
                    'Contents',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
