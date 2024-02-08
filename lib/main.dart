import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, BB',
                        style: TextStyle(
                            color: Color(0xFFBFE3B4),
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: const Color(0xFFBFE3B4).withOpacity(0.7),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 55,
              ),
              Text(
                "Total Balance",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "\$5 194 542",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFF2B33A),
                          borderRadius: BorderRadius.circular(45)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 38,
                        ),
                        child: Text(
                          "Transfer",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.8)),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
