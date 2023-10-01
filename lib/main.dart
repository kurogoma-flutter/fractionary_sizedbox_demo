import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double _sliderValue = 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery Demo'),
      ),
      body: Column(
        children: [
          Flexible(
            child: FractionallySizedBox(
              alignment: Alignment.topCenter,
              widthFactor: 0.8,
              heightFactor: 0.1,
              child: Container(
                color: Colors.amber,
              ),
            ),
          ),
          // FractionallySizedBox(
          //   alignment: Alignment.topCenter,
          //   widthFactor: 0.8,
          //   heightFactor: 0.1,
          //   child: Container(
          //     color: Colors.amber,
          //   ),
          // ),
        ],
      ),
    );
  }
}
