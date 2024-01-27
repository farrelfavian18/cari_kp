import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Ezzah Calief'),
            accountEmail: const Text('EzzahClf@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('lib/images/profil.png')),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: () => print('Profile tapped'),
          ),
           ListTile(
            leading: Icon(Icons.message),
            title: Text('Message'),
            onTap: () => print('Message tapped'),
          ),
           ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () => print('Notificatins tapped'),
          ),
           ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => print('Settings tapped'),
          ),
            ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sign Out'),
            onTap: () => print('Sign Out tapped'),
          )

        ],
      ),
    );
  }
}
