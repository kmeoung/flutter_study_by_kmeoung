import 'package:flutter/material.dart';

class TalingUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          'kmeoung taling',
          style: TextStyle(
            color: Colors.red[400],
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _eventBanner(),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                top: 20.0,
                left: 10.0,
                bottom: 5.0,
              ),
              child: Text(
                '맞춤 CLASS',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => Container(
                  width: 300.0,
                  margin: EdgeInsets.only(right: 10),
                  color: Colors.accents[index % Colors.accents.length],
                  child: Center(
                    child: Text(
                      '${index + 1} Match Class',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
            activeIcon: Icon(
              Icons.home,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '검색',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '위시리스트',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: '채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: '더보기',
          ),
        ],
      ),
    );
  }

  Container _eventBanner() {
    return Container(
      height: 250,
      color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.accents[(index + 1) % Colors.accents.length],
          child: Center(
            child: Text(
              '${index + 1} Event Page',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
        itemCount: 3,
      ),
    );
  }
}
