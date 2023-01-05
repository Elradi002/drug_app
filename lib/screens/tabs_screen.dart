import 'package:drug_app/screens/library.dart';
import 'package:drug_app/screens/personal_profile.dart';
import 'package:drug_app/screens/taafi.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs-screen';

  const TabsScreen({super.key});
  @override
  State<StatefulWidget> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map> _screens = [
    {'screen': const Home(), 'title': 'الصفحة الرئيسية'},
    {'screen': Library(), 'title': 'مكتبة تعافي'},
    {'screen': const PersonalProfile(), 'title': 'الحساب'},
    {'screen': Taafi(), 'title': 'التعافي'},
  ];
  int _selectedScreenIndex = 0;
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_selectedScreenIndex]['screen'],
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Theme.of(context).colorScheme.primary,
          // unselectedLabelStyle: const TextStyle(color: Colors.black),
          onTap: _selectScreen,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          currentIndex: _selectedScreenIndex,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'الصفحة الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_library_outlined,
              ),
              label: 'مكتبة عافر',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box_outlined,
              ),
              label: 'الحساب',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_florist_outlined,
              ),
              label: 'تعافي',
            ),
          ],
        ),
      ),
    );
  }
}
