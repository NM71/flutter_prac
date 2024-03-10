import 'package:do_list/pages/first_page.dart';
import 'package:do_list/pages/second_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            'Second Page',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to 1st Page',style: TextStyle(fontWeight: FontWeight.bold),),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FirstPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
