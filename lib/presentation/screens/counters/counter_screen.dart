import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    //return const Placeholder(); //widget con x que muestra dónde se va a trabajar
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 36, 125, 120),
        title: const Text(
          "Counter Screen",
          style: TextStyle(color: Color.fromARGB(255, 42, 7, 53)),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 36, 125, 120),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$clickCounter",
                style: const TextStyle(
                    fontSize: 160,
                    fontWeight: FontWeight.w200,
                    color: Colors.white)),
            const Text("Clicks",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w200,
                    color: Colors.white))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          setState(() {
            clickCounter++;
          });
        },
        child:
            const Icon(Icons.plus_one_rounded, color: Colors.white, size: 30),
      ),
    );
  }
}
