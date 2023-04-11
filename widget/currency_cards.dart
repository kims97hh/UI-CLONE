import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String startTimeH, startTimeM, endTimeH, endTimeM, todoText;
  List<String> personList = [];
  bool me = false;
  late Color cardColor;

  final _blackColor = const Color(0xFF1F2123);

  CurrencyCard({
    super.key,
    required this.startTimeH,
    required this.startTimeM,
    required this.endTimeH,
    required this.endTimeM,
    required this.todoText,
    required this.personList,
    required this.cardColor,
  });

  String participants() {
    String participants = "";
    int left = 3;
    personList = List.from(personList); // Make a mutable
    if (personList.contains('ME')) {
      left = 2;
      personList.remove("ME");
    }
    if (personList.length <= left) {
      participants = personList.join("       ");
    } else {
      participants =
          "${personList.take(left).join("       ")}      +${personList.length - left}";
    }
    return participants;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: cardColor, // 변경가능
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      startTimeH,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          height: .8),
                    ),
                    Text(
                      startTimeM,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "|",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.3),
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      endTimeH,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      endTimeM,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  todoText,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 60,
                    fontWeight: FontWeight.w400,
                    height: .8,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 45,
                ),
                personList.contains('ME')
                    ? const Text(
                        "ME       ",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    : const Text(""),
                Text(
                  participants(),
                  style: TextStyle(
                      color: Colors.black.withOpacity(.3),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
