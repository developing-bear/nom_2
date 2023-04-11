import 'package:flutter/material.dart';

class PlannerCard extends StatelessWidget {
  final String fromHour,
      fromMin,
      toHour,
      toMin,
      name1,
      name2,
      with1,
      with2,
      with3,
      with4;
  final Color cardColor, withColor1, withColor2, withColor3, withColor4;

  const PlannerCard({
    super.key,
    required this.fromHour,
    required this.fromMin,
    required this.toHour,
    required this.toMin,
    required this.name1,
    required this.name2,
    required this.with1,
    required this.with2,
    required this.with3,
    required this.with4,
    required this.cardColor,
    required this.withColor1,
    required this.withColor2,
    required this.withColor3,
    required this.withColor4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 200,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(40),
      ),
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Text(
                  fromHour,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
                Text(
                  fromMin,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const Text(
                  '|',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Text(toHour,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w500)),
                Text(toMin, style: const TextStyle(fontWeight: FontWeight.w600))
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name1,
                      style: const TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w400,
                          height: 1.2),
                    ),
                    Text(
                      name2,
                      style: const TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w400,
                          height: 0.8),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    with1,
                    style: TextStyle(
                        height: 2.0,
                        fontWeight: FontWeight.w600,
                        color: withColor1),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    with2,
                    style: TextStyle(
                        height: 2.0,
                        fontWeight: FontWeight.w600,
                        color: withColor2),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    with3,
                    style: TextStyle(
                        height: 2.0,
                        fontWeight: FontWeight.w600,
                        color: withColor3),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    with4,
                    style: TextStyle(
                        height: 2.0,
                        fontWeight: FontWeight.w600,
                        color: withColor4),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
