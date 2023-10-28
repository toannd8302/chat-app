import 'package:chat_mobile_app/rourtes/MyRourtes.dart';
import 'package:chat_mobile_app/widgets/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 48,
          ),
        ),
      ),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
     routes: myRourtes,
    );
  }
}
