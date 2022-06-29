import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'demos/pages/main_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //fontFamily: 'Lilita'
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark, // pil saat gibi nesneleri rengini değiştirir
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: const MyWidget(),
    );
  }
}
