import 'package:flutter/material.dart';
import 'package:formulario/src/imagenes/screen.dart';
import 'package:formulario/src/post/screen.dart';
import 'package:formulario/src/users/screen.dart';
import 'package:formulario/src/widgets/bottom_navigation_bar.dart';
import 'package:get/get.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final _selectedTab = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: _selectedTab.value,
            children: [
              ImagesScreen(),
              UserScreen(),
              PostScreen(),
            ],
          )),
      bottomNavigationBar: Obx(() => CommonBottomNavigationBar(
            currentIndex: _selectedTab.value,
            onChangeTab: (index) => _selectedTab.value = index,
          )),
    );
  }
}
