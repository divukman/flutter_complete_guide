import 'package:flutter/material.dart';

import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            var message = await Navigator.push(context,
                MaterialPageRoute(builder: (context) {
              return const SecondPage(title: 'SecondPage');
            }));
            // This message will be printed to the console
            print(message);
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}
