import 'package:flutter/material.dart';
import 'router/router.dart';
import 'theme/theme.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Задачи',
      theme: darkTheme,
      routes: routes,
    );
  }
}
