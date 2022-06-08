import 'package:flutter/material.dart';

class Demo1 extends StatefulWidget {
  const Demo1({Key? key}) : super(key: key);

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AppBar(
          title: const Text(
            'data',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
