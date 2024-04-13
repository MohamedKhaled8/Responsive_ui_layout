import 'package:flutter/material.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class CustomDrawer extends StatelessWidget {
  final Color color;
  const CustomDrawer({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: color,
      child: const Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.flutter_dash,
              size: 50.0,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Course"),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Dashboard"),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Course"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Person"),
          ),
        ],
      ),
    );
  }
}
