import 'package:drug_app/screens/library.dart';
import 'package:flutter/material.dart';

import '../models/constants.dart';
import '../screens/home.dart';
import 'LanguageIcon.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget buildListTile(String title, IconData icon, VoidCallback onTabHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: kLargeTittle,
      ),
      onTap: onTabHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            //alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.secondary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'القوائم',

                  //translation(context).lists,
                  style: kAppBarTheme,
                ),
                LanguageIcon(),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // buildListTile(
          //   translation(context).search,
          //   Icons.search,
          //   () {
          //     Navigator.of(context).pushNamed(SearchScreen.routeName);
          //   },
          // ),
          buildListTile(
            'الصفحة الرئيسية',
            Icons.home_outlined,
            () {
              Navigator.of(context).pushNamed(Home.routeName);
            },
          ),
          buildListTile(
            'الحساب',
            Icons.account_box_outlined,
            () {
              Navigator.of(context).pushNamed(Library.routeName);
            },
          ),
          buildListTile(
            'تعافي',
            Icons.local_florist_outlined,
            () {
              Navigator.of(context).pushNamed(Library.routeName);
            },
          ),
        ],
      ),
    );
  }
}
