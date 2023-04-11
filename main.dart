import 'package:day9/widget/currency_cards.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final List person = [
    "ME",
    "ALEX",
    "HELENA",
    "NANA",
    "foas",
  ];

  App({super.key});

  String participants() {
    String participants = "";
    if (person.length <= 3) {
      participants = person.join("       ");
    } else {
      participants =
          "${person.take(3).join("       ")}      +${person.length - 3}";
    }
    return participants;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      radius: 28,
                      child: Icon(
                        Icons.person,
                        size: 35,
                      ),
                    ),
                    Text(
                      "+",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MONDAY 16',
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              const Text(
                                'TODAY',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              const CircleAvatar(
                                radius: 4,
                                backgroundColor: Colors.red,
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Text(
                                "17  18  19  20  21",
                                style: TextStyle(
                                    color: Colors.grey.shade400, fontSize: 40),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                CurrencyCard(
                  startTimeH: "11",
                  startTimeM: "30",
                  endTimeH: "12",
                  endTimeM: "20",
                  todoText: "DESIGN\nMEETING",
                  personList: const ["ALEX", "HELENA", "NANA"],
                  cardColor: Colors.yellow,
                ),
                const SizedBox(
                  height: 10,
                ),
                CurrencyCard(
                  todoText: "DAILY\nPROJECT",
                  startTimeH: "12",
                  startTimeM: "35",
                  endTimeH: "14",
                  endTimeM: "10",
                  personList: const [
                    "ME",
                    "RICHARD",
                    "CIRY",
                    "NICO",
                  ],
                  cardColor: Colors.purple,
                ),
                const SizedBox(
                  height: 10,
                ),
                CurrencyCard(
                  todoText: "WEEKLY\nPLANNING",
                  startTimeH: "15",
                  startTimeM: "00",
                  endTimeH: "16",
                  endTimeM: "30",
                  personList: const [
                    "DEN",
                    "NANA",
                    "MARK",
                  ],
                  cardColor: Colors.green,
                ),
                const SizedBox(
                  height: 10,
                ),
                CurrencyCard(
                  todoText: "CODE\nCHALLENGES",
                  startTimeH: "17",
                  startTimeM: "00",
                  endTimeH: "23",
                  endTimeM: "30",
                  personList: const [
                    "HHK",
                    "Report",
                    "DAY9",
                    "UI Clone",
                    "Thank"
                  ],
                  cardColor: Colors.orange,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
