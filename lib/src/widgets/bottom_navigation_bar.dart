import 'package:flutter/material.dart';

class CommonBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onChangeTab;

  const CommonBottomNavigationBar({
    Key key,
    this.currentIndex,
    this.onChangeTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _bottomNavigationBar(context);
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
    Widget icon,
  ) {
    return BottomNavigationBarItem(icon: icon, title: Container());
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => onChangeTab(index),
          items: [
            _bottomNavigationBarItem(Icon(Icons.emoji_people_sharp)),
            _bottomNavigationBarItem(Icon(Icons.poll_sharp)),
            _bottomNavigationBarItem(Icon(Icons.image)),
          ]),
    );
  }
}
