import 'package:flutter/material.dart';
import 'package:test_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

final Map<String, Widget Function(BuildContext)> routes = {
  '/home': (context) => const MyHomePage(title: 'Flutter'),
  '/detail': (context) => Scaffold(
    appBar: AppBar(),
    body: ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text('Back'),
    ),
  ),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: '/home',
    );
  }
}
