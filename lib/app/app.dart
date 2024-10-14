import 'package:flutter/material.dart';
import 'package:mobile_task/feat/login/log_in_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: LogInScreen(),
    );
  }
}
