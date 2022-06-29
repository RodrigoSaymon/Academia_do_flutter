import 'package:academia/01_Home/Images_fonts.dart';
import 'package:academia/01_Home/container.dart';
import 'package:academia/01_Home/page_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Academia do Flutter'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    settings: const RouteSettings(name: 'AulaContainer'),
                    builder: (_) => const AulaContainer()),
              );
            },
            icon: const Icon(Icons.add_link_outlined),
          ),
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
          IconButton(
            onPressed: () {
               Navigator.of(context).push(
                MaterialPageRoute(
                    settings: const RouteSettings(name: 'imagensFonts'),
                    builder: (_) => const ImagesFonts()),
              );
            },
            icon: const Icon(Icons.airline_seat_individual_suite_rounded),
          ),
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
          child: const Text('Home', 
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }
}
