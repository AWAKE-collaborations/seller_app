import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  // Function returning a ListTile
  // tapHolder parameter function passed for onTap(deals with Navigation)
  Widget buildListTile(String title, IconData icon, Function tapHolder) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: tapHolder,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/app_icon.jpeg'),
              radius: 50,
            ),
            accountEmail: Text('testmail@gmail.com'),
            accountName: Text(
              'CocoCart',
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          // SizedBox(height: 10),
          buildListTile(
            'Home',
            Icons.home,
            () {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
          ),
          buildListTile(
            'Edit Profile',
            Icons.person,
            () {
              // Navigator.of(context);
            },
          ),
          buildListTile(
            'Settings',
            Icons.settings,
            () {
              // Navigator.of(context);
            },
          ),
          buildListTile(
            'Statments',
            Icons.notes,
            () {
              // Navigator.of(context);
            },
          ),
          buildListTile(
            'About Us',
            Icons.info,
            () {
              // Navigator.of(context);
            },
          ),
          buildListTile(
            'Contact',
            Icons.call,
            () {
              // Navigator.of(context);
            },
          ),
          buildListTile(
            'Help',
            Icons.help,
            () {
              // Navigator.of(context);
            },
          ),
          buildListTile(
            'Exit',
            Icons.exit_to_app,
            () {
              // Navigator.of(context);
            },
          ),
        ],
      ),
    );
  }
}
