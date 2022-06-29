import 'package:academia/01_Home/01_home_page.dart' as navegacao;
import 'package:flutter/material.dart';
import 'container.dart';
import 'page_widgets.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const HOME = '/';
  static const AULACONTAINER = '/Container';
  static const PRINCIPAISWIDGETS = '/WIDGETS';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(),
      routes: {
        HOME: (context) => const navegacao.HomePage(),
        AULACONTAINER: (context) => const AulaContainer(),
        PRINCIPAISWIDGETS: (context) => const PageWidgets(),
      },
    );
  }
}
