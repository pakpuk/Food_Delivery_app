import 'package:flutter/material.dart';

class TesttScreen extends StatefulWidget {
  const TesttScreen({super.key});

  @override
  State<TesttScreen> createState() => _TesttScreenState();
}

class _TesttScreenState extends State<TesttScreen> {
  TextEditingController firscontroller = TextEditingController();
  TextEditingController secondecontroller = TextEditingController();

  double? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: firscontroller,
                decoration: InputDecoration(
                  hintText: 'Number 1',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              const SizedBox(height: 12),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: secondecontroller,
                decoration: InputDecoration(
                  hintText: 'Number 2',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  final n1 = double.tryParse(firscontroller.text) ?? 0;
                  final n2 = double.tryParse(secondecontroller.text) ?? 0;
                  setState(() {
                    result = n1 + n2;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green,
                  ),
                  child: const Text(
                    "Calculer",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              if (result != null)
                Text(
                  "Result: $result",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
