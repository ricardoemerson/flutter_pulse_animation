import 'package:flutter/material.dart';

import '../widgets/pulse.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var temperature = 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pulse Animation'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Pulse(
              temperature: temperature * 100,
            ),
            const SizedBox(height: 40),
            Slider(
              value: temperature,
              onChanged: (value) {
                setState(() {
                  temperature = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
