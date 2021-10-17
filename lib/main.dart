import 'package:path/path.dart' as Path;
import 'package:chatapp/pages/chat.screen.dart';
import 'package:chatapp/pages/login.screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context)=>loginForm(),
        '/chat':(context)=>chatScreen(),
      },
  
    );
}
}