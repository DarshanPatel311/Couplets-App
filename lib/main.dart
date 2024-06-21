import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rigveda_app/provider/json_provider.dart';
import 'package:rigveda_app/view/Doha/doha_Screen.dart';
import 'package:rigveda_app/view/Doha_Info/doha_info_Screen.dart';
import 'package:rigveda_app/view/Home/home_screen.dart';

void main() {
  runApp( MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => JsonProvider(),)
  ],child: MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      routes: {
        '/':(context) => HomeScreen(),
        '/DohaList':(context) => DohaListScreen(),
        '/DohaInfo':(context) => InfoScreen(),

      },
    );
  }
}


