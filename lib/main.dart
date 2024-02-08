import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    text: "Transfer",
                    bgColor: const Color(0xFFF2B33A),
                    txtColor: Colors.black.withOpacity(0.8),
                  ),
                  Button(
                    text: "Request",
                    bgColor: const Color(0xFF1F2123),
                    txtColor: Colors.white.withOpacity(0.8),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
