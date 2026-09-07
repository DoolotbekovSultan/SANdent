import 'package:flutter/material.dart';

/// Root widget of the application.
/// Корневой виджет приложения.
///
/// Replace [MaterialApp] with [MaterialApp.router] when you add routing.
/// Замените [MaterialApp] на [MaterialApp.router] при добавлении роутинга.
class SANdentApp extends StatelessWidget {
  const SANdentApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp — configures the app's visual theme, navigation, and locale.
    // MaterialApp — настраивает тему, навигацию и локализацию приложения.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SANdent',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      // TODO(nexo): replace with your router config when routing is added.
      // TODO(nexo): замените на конфигурацию роутера при добавлении роутинга.
      home: const Scaffold(
        body: Center(
          child: Text('Welcome to SANdent'),
        ),
      ),
    );
  }
}
