import 'package:flutter/material.dart';

class PeopleOfDeliveryUi extends StatefulWidget {
  @override
  _PeopleOfDeliveryUiState createState() => _PeopleOfDeliveryUiState();
}

class _PeopleOfDeliveryUiState extends State<PeopleOfDeliveryUi> {
  List<String> _items = [
    'B마트',
    '배민라이더스',
    '포장/방문',
    '1인분',
    '한식',
    '분식',
    '카페º디저트',
    '돈까스º회º일식',
    '치킨',
    '피자',
    '아시안º양식',
    '중국집',
    '족발º보쌈',
    '야식',
    '찜º탕',
    '도시락'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: _buildBottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemExtent: MediaQuery.of(context).size.width,
                itemBuilder: (context, index) => Container(
                  color: Colors.accents[(index + 1) % Colors.accents.length],
                  child: Center(
                    child: Text(
                      'Event Page',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
              child: GridView.count(
                crossAxisCount: 4,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: _items
                    .map((item) => GridTile(
                            child: Column(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.only(bottom: 10),
                              color: Colors.accents[
                                  _items.indexOf(item) % Colors.accents.length],
                            ),
                            Text(
                              item,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                          crossAxisAlignment: CrossAxisAlignment.center,
                        )))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavBar() {
    return BottomNavigationBar(
      elevation: 0,
      selectedItemColor: Colors.tealAccent[700],
      unselectedItemColor: Colors.grey[800],
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions_outlined),
          label: '뭐먹지',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: '찜한가게',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.article_outlined),
          label: '주문내역',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.face_outlined),
          label: 'my배민',
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: BackButton(
        color: Colors.black,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.qr_code,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
      title: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Current Location',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Container(
            width: 25,
            height: 25,
            margin: EdgeInsets.only(left: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                color: Colors.tealAccent[700],
                child: GestureDetector(
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  onTap: () {},
                ),
              ),
            ),
          )
        ],
      ),
      centerTitle: true,
    );
  }
}
