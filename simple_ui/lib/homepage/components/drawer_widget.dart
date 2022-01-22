import 'package:flutter/material.dart';
import 'package:simple_ui/models/static_data.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(defaultPadding * 2),
                  child: Icon(Icons.phone_android_outlined, size: 100, color: primaryColor,),
                ),
                DrawerTiles(label: "HOME", icon: Icons.home,),
                DrawerTiles(label: "INBOX", icon: Icons.message),
                DrawerTiles(label: "SETTINGS", icon: Icons.settings),
              ],
            ),
            DrawerTiles(label: "LOGOUT", icon: Icons.logout),
          ],
        ),
      ),
    );
  }
}

class DrawerTiles extends StatelessWidget {
  const DrawerTiles({
    Key? key, required this.label, required this.icon,
  }) : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: ListTile(
        leading: Icon(icon, color: primaryColor, size: 25,),
        title: Text(label, style: TextStyle(color: primaryColor, fontSize: 16),),
      ),
    );
  }
}