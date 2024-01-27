import 'package:cari_kp/pages/auth_page.dart';
import 'package:flutter/material.dart';
<<<<<<< Updated upstream
// import 'package:cari_kp/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
=======
import 'package:cari_kp/pages/login_page.dart';
import 'package:cari_kp/navbar.dart';
>>>>>>> Stashed changes

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
<<<<<<< Updated upstream
    return const MaterialApp(
      // home: Scaffold(
      //   body: Center(
      //     child: Text('Cari KP'),
      //   ),
      // ),

      //Login Page
      // home: LoginPage(),
      home: AuthPage(),
=======
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text('Tempat Kerja Praktik'),
          backgroundColor: Colors.blueGrey,
        ),
        body: const Center(child: Text('Main Page', style: TextStyle(fontSize: 40.0),)),
        ),
      //home: Dashboard(),
      //home: LoginPage(),
>>>>>>> Stashed changes
    );
  }
}
