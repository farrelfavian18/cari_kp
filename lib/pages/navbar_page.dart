import 'package:flutter/material.dart';
import 'package:cari_kp/pages/dashboard_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NavBarPage extends StatelessWidget {
  NavBarPage({super.key});
  final user = FirebaseAuth.instance.currentUser!;

  void signOutUser() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Farrel Favian'),
            accountEmail: Text('email: ' + user.email!),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('lib/images/profil.png')),
            ),
            decoration: const BoxDecoration(
              color: Colors.grey,
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
            onTap: () => signOutUser(),
          )
        ],
      ),
    );
  }
}
