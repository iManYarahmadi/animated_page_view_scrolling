import 'package:animated_page_view_scrolling/animated_page_view_scrolling.dart';
import 'package:animated_page_view_scrolling/enum.dart';
import 'package:flutter/material.dart';

import 'newmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Page View"),
      ),
      body: Center(
          child: AnimatedPageViewScrolling(
        myModel: modelValue1,
        heightMainPageView: 400,
        heightItem: 320,
        viewportFraction: 0.80,
        imageMode: ImageMode.network,
      )),
    );
  }
}
