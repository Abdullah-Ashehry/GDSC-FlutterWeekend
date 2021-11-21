import 'package:flutter/material.dart';
import 'package:myprescription/pages/home_container.dart';
import './pages/homepage.dart';
import './pages/login.dart';
import './pages/verification.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // Test
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeContainer(),
    );
  }
}
