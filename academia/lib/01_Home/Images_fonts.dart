import 'package:flutter/material.dart';

class ImagesFonts extends StatelessWidget {
  const ImagesFonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Imagens e Fonts'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.red,
              child: Image.network(
                'https://cfa2f286fa.cbaul-cdnwnd.com/6d1e0f9ec83220a5e4d89656081caf24/system_preview_detail_200000263-0bbb50cb53-public/Rodrigo%20T-Bass.JPG',
                fit: BoxFit.cover,
              ),
            ),
            const Center(
              child: Text(
                'RODRGIO SAYMON',
                style: TextStyle(
                    fontFamily: 'Roblox',
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset(
              'assets/images/Rodrigo T-Bass.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
                'https://cfa2f286fa.cbaul-cdnwnd.com/6d1e0f9ec83220a5e4d89656081caf24/system_preview_detail_200000263-0bbb50cb53-public/Rodrigo%20T-Bass.JPG',
                fit: BoxFit.cover,
              ),
              const Center(
              child: Text(
                'RODRGIO SAYMON',
                style: TextStyle(
                    fontFamily: 'Roblox',
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset(
              'assets/images/Rodrigo T-Bass.jpg',
              fit: BoxFit.cover,
            ),
            ]),
      ),
           
        
      
    );
  }
}
