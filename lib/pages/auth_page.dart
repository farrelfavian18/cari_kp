import 'package:cari_kp/pages/dashboard_page.dart';
// import 'package:cari_kp/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cari_kp/pages/login_or_register_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user login
          if (snapshot.hasData) {
            return DashboardPage();
          }

          //user tidak login
          else {
            return LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
