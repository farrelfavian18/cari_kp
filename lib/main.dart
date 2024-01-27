import 'package:cari_kp/pages/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:cari_kp/pages/navbar_page.dart';
// import 'package:cari_kp/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // drawer: NavBarPage(),
        body: AuthPage(),
      ),
      // home: Scaffold(
      //   body: Center(
      //     child: Text('Cari KP'),
      //   ),
      // ),

      //Login Page
      // home: LoginPage(),
    );
  }
}
