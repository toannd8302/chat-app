import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _facebookeLogout() async {
    final fb = FacebookLogin();
    await fb.logOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          _facebookeLogout();
          Navigator.pushReplacementNamed(context, "/");
        },
        child: const Text("Logout"),
      ),
    ));
  }
}
