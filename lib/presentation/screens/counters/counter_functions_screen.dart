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
              "Phillips Counter",
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              IconButton(
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                },
                icon: const Icon(Icons.refresh_outlined),
              ),
            ]),
        backgroundColor: const Color.fromARGB(255, 59, 146, 142),
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  if (clickCounter == 0) return;
                  clickCounter--;
                });
              },
            ),
            const SizedBox(height: 10), //para hacer un espacio entre ambos
            CustomButton(
              icon: Icons.plus_one_outlined,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true, //sonido o vibración jaja
      elevation: 105,
      shape: const StadiumBorder(),
      backgroundColor: Colors.white,
      onPressed: onPressed,
      child: Icon(icon, color: const Color.fromARGB(255, 14, 171, 174), size: 30),
    );
  }
}
