// import 'package:flutter/material.dart';

// class AddPage extends StatelessWidget {
//   const AddPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('add item'),
//       ),
//       body: Column(
//         children: [
//           ElevatedButton(
//               onPressed: () {
//                 ListView.builder(
//                   itemCount: 1000,
//                   itemBuilder: (context, index) {
//                     return StatefulBuilder(builder: (context, setState) {
//                       void add() {
//                         setState(() {
//                           Widget.items.add(Item)


//                         });
//                       }

//                       return ListTile(
//                         title: Text('O item $index'),
//                         subtitle: Text('Rodrigo Saymon'),
//                         leading: CircleAvatar(
//                           maxRadius: 30,
//                           backgroundImage: NetworkImage(
//                               'https://st3.depositphotos.com/5477854/15883/i/600/depositphotos_158834410-stock-photo-emoji-yellow-face-lol-laugh.jpg'),
//                         ),
//                         trailing: CircleAvatar(),
//                       );
//                     });
//                   },
//                 );
//               },
//               child: Text('add'))
//         ],
//       ),
//     );
//   }
// }
