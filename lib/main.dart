import 'package:cari_kp/pages/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:cari_kp/pages/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
      //home: LoginPage(),
    );
  }
}
