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
  double _sliderValue = 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery Demo'),
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            Flexible(
              child: AnimatedFractionallySizedBox(
                alignment: Alignment.topCenter,
                widthFactor: _sliderValue,
                heightFactor: 0.2,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ),
            const Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_sliderValue < 1.0) {
                    _sliderValue += 0.05;
                  } else {
                    _sliderValue = 0.1;
                  }
                });
              },
              child: const Text('Animation'),
            ),
          ],
        ),
      ),
    );
  }
}
