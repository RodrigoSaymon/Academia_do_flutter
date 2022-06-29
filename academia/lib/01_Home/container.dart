import 'package:flutter/material.dart';

class AulaContainer extends StatelessWidget {
  const AulaContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Aula de Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(bottom: 10, top: 10),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 20,
                    offset: Offset(10, 10),
                  ),
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 20,
                    offset: Offset(-10, -10),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(bottom: 10, top: 10),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 20,
                    offset: Offset(10, 10),
                  ),
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 20,
                    offset: Offset(-10, -10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
