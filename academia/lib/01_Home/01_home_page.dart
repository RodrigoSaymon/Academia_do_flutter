import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Academia do Flutter'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_link_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.airplanemode_inactive_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.airline_seat_individual_suite_rounded),
          ),
        ],
      ),
      drawer: Drawer(
        child: Center(
          child: Text('Rodrigo'),
        ),
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text('Saymon'),
        ),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
