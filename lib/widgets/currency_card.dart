import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String currencyName;
  final IconData currencyIcon;
  final String currencyAmount;
  final String currencyAbbr;
  final int order;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard(
      {super.key,
      required this.currencyName,
      required this.currencyIcon,
      required this.currencyAmount,
      required this.currencyAbbr,
      required this.order});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -20 * order.toDouble()),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: order % 2 == 1 ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currencyName,
                    style: TextStyle(
                      color: order % 2 == 1 ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        currencyAmount,
                        style: TextStyle(
                          color: order % 2 == 1 ? _blackColor : Colors.white,
                          fontSize: 22,
                          letterSpacing: -0.8,
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        currencyAbbr,
                        style: TextStyle(
                          color: order % 2 == 1 ? _blackColor : Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.1,
                child: Transform.translate(
                  offset: const Offset(-5, 8),
                  child: Icon(
                    currencyIcon,
                    color: order % 2 == 1 ? _blackColor : Colors.white,
                    size: 80,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
