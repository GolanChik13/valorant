import 'package:flutter/material.dart';
import 'package:valoran_app/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valorant Info',
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white10),
        ),
      ),
      home: const HomePage(),
    );
  }
}
