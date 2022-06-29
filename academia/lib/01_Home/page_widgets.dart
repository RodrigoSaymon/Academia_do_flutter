import 'package:flutter/material.dart';

class PageWidgets extends StatelessWidget {
  const PageWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('title: AppBar'),
        backgroundColor: Colors.green,
      ),
      drawer: const Drawer(
        child: Center(
          child: Text('Drawer'),
        ),
      ),
      endDrawer: const Drawer(
        child: Center(
          child: Text('endDrawer'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('body'),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.abc_outlined),
            ),
            const Icon(Icons.ac_unit_sharp),
          ],
        ),
      ),
    );
  }
}
