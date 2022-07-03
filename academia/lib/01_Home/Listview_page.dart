import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.builder(
          itemCount: 1000,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('O item $index'),
              subtitle: Text('Rodrigo Saymon'),
              leading: CircleAvatar(
                maxRadius: 30,
                backgroundImage: NetworkImage('https://st3.depositphotos.com/5477854/15883/i/600/depositphotos_158834410-stock-photo-emoji-yellow-face-lol-laugh.jpg'),
              ),
              trailing: CircleAvatar(),
            ); 
          }),
    );
  }
}


// SingleChildScrollView - Torna a tela rolhável para evitar problema de estouro;

// ListView - Torna a tela rolhável para evitar problema de estouro e adiciona lista;
// .builder - 
