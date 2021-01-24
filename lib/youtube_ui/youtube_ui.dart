import 'package:flutter/material.dart';

class YoutubeUi extends StatefulWidget {
  @override
  _YoutubeUiState createState() => _YoutubeUiState();
}

class _YoutubeUiState extends State<YoutubeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey[700],
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: '인기'),
          BottomNavigationBarItem(
              icon: Icon(Icons.featured_play_list), label: '구독'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_post_office), label: '수신함'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: '라이브러리'),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.chat, color: Colors.red),
                    ),
                    Text(
                      'YouTube',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                      icon: Icon(Icons.videocam, color: Colors.grey[700]),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.search, color: Colors.grey[700]),
                      onPressed: () {}),
                  FloatingActionButton(
                    onPressed: () {},
                    mini: true,
                    backgroundColor: Colors.blue,
                    elevation: 0,
                    focusElevation: 0,
                    hoverElevation: 0,
                    highlightElevation: 0,
                    disabledElevation: 0,
                  ),
                ],
              )
            ];
          },
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => Column(
              children: [
                Container(
                  height: 300,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Thumbnail',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.blue,
                          mini: true,
                          elevation: 0,
                          focusElevation: 0,
                          hoverElevation: 0,
                          highlightElevation: 0,
                          disabledElevation: 0,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Long Long Long Long Long Title $index',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                            Text(
                              '채널명 º 조회수 º 등록시간',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[800],
                              ),
                            ),
                            Text(
                              '자막',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey[800],
                              ),
                            )
                          ],
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
