import 'package:academia/01_Home/01_home_page.dart' as navegacao;
import 'package:flutter/material.dart';
import 'Images_fonts.dart';
import 'Listview_page.dart';
import 'container.dart';
import 'page_widgets.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const HOME = '/';
  static const AULACONTAINER = '/Container';
  static const PRINCIPAISWIDGETS = '/WIDGETS';
  static const IMAGENSFONTES = '/ImagesFonts';
  static const LISTVIEWPAGE = '/ListviewPage';

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
        IMAGENSFONTES : (context) => const  ImagesFonts(),
        LISTVIEWPAGE: (context) => const ListviewPage(),
      },
    );
  }
}
