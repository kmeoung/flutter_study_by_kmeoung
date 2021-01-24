import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  Widget _customWidget = CustomListView();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        showSelectedLabels: false,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.red[700],
        unselectedItemColor: Colors.grey[700],
        onTap: (index) {
          _currentIndex = index;
          setState(() {
            switch (index) {
              case 0:
                _customWidget = CustomListView();
                break;
              case 1:
                _customWidget = CustomGridView();
                break;
            }
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Grid'),
        ],
      ),
      body: _customWidget,
    );
  }
}

class CustomListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('SliverListView'),
          centerTitle: true,
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return ListTile(
            title: Text('$index title'),
            subtitle: Text('$index contents'),
            onTap: () {},
          );
        }, childCount: 100))
      ],
    );
  }
}

class CustomGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('SliverGridView'),
          centerTitle: true,
        ),
        SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0),
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                  child: Center(
                child: Text('$index'),
              )),
              childCount: 100,
            ))
      ],
    );
  }
}
