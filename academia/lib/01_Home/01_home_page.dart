import 'package:academia/01_Home/Images_fonts.dart';
import 'package:academia/01_Home/MyApp.dart';
import 'package:academia/01_Home/container.dart';
import 'package:academia/01_Home/page_widgets.dart';
import 'package:flutter/material.dart';

enum PopupMenuPages {
  Container,
  ImagensFonts,
  ListviewPage,
  PageWidgets,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Academia do Flutter'),
        backgroundColor: Colors.green,
        actions: [
          // IconButton(
          //   onPressed: () {
          //     Navigator.of(context).push(
          //       MaterialPageRoute(
          //           settings: const RouteSettings(name: 'AulaContainer'),
          //           builder: (_) => const AulaContainer()),
          //     );
          //   },
          //   icon: const Icon(Icons.add_link_outlined),
          // ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    settings: const RouteSettings(name: 'Principais Widgets'),
                    builder: (_) => const PageWidgets()),
              );
            },
            icon: const Icon(Icons.airplanemode_inactive_outlined),
          ),
          PopupMenuButton<PopupMenuPages>(
              onSelected: (PopupMenuPages valueSelected) {
            switch (valueSelected) {
              case PopupMenuPages.Container:
                Navigator.of(context).pushNamed(MyApp.AULACONTAINER);
                break;
              case PopupMenuPages.ImagensFonts:
                Navigator.of(context).pushNamed(MyApp.IMAGENSFONTES);
                break;
                case PopupMenuPages.ListviewPage:
                Navigator.of(context).pushNamed(MyApp.LISTVIEWPAGE);
                break;
                 case PopupMenuPages.PageWidgets:
                Navigator.of(context).pushNamed(MyApp.PRINCIPAISWIDGETS);
                break;
            }
          }, itemBuilder: (BuildContext context) {
            return <PopupMenuItem<PopupMenuPages>>[
              PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.Container,
                child: Text('Container'),
              ),
              
              PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.ImagensFonts,
                child: Text('ImagesFonts'),
              ),
                  PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.ListviewPage,
                child: Text('ListviewPage'),
              ),
               PopupMenuItem<PopupMenuPages>(
                value: PopupMenuPages.PageWidgets,
                child: Text('PageWidgets'),
              ),
            ];
          })
          // IconButton(
          //   onPressed: () {
          //      Navigator.of(context).push(
          //       MaterialPageRoute(
          //           settings: const RouteSettings(name: 'imagensFonts'),
          //           builder: (_) => const ImagesFonts()),
          //     );
          //   },
          //   icon: const Icon(Icons.airline_seat_individual_suite_rounded),
          // ),
        ],
      ),
      drawer: const Drawer(
        child: Center(
          child: Text('Rodrigo'),
        ),
      ),
      endDrawer: const Drawer(
        child: Center(
          child: Text('Saymon'),
        ),
      ),
      body: Center(
        child: Container(
          child: const Text(
            'Home',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
