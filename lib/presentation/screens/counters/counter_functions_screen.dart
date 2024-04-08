import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    //return const Placeholder(); //widget con x que muestra dónde se va a trabajar
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 36, 125, 120),
          title: const Text(
            "Counter Functions",
            style: TextStyle(color: Color.fromARGB(255, 42, 7, 53)),
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh_outlined),
            ),
          ]),
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
            Text("Click${clickCounter == 1 ? "" : "s"}",
                style: const TextStyle(
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
