import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  Widget getRow(List<String> buttons, int rowNumber) {
    return Row(
      children: [
        Expanded(
          // ignore: avoid_unnecessary_containers
          child: Container(
            color: (rowNumber % 2 == 0 && rowNumber != 0)
                ? Color(0xFFAD1457)
                : Color(0xFFE91E63),
            alignment: Alignment.center,
            child: Text(
              buttons[0],
              style: const TextStyle(
                fontSize: 36,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          // ignore: avoid_unnecessary_containers
          child: Container(
            color: (rowNumber % 2 == 0 && rowNumber != 0)
                ? Color(0xFFC21858)
                : Color(0xFFAD1457),
            alignment: Alignment.center,
            child: Text(
              buttons[1],
              style: const TextStyle(
                fontSize: 36,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          // ignore: avoid_unnecessary_containers
          child: Container(
            color: (rowNumber % 2 == 0 && rowNumber != 0)
                ? Color(0xFFAD1457)
                : Color(0xFFC21858),
            alignment: Alignment.center,
            child: Text(
              buttons[2],
              style: const TextStyle(
                fontSize: 36,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          // ignore: avoid_unnecessary_containers
          child: Container(
            color: (rowNumber % 2 == 0 && rowNumber != 0)
                ? Color(0xFFE91E63)
                : Color(0xFFAD1457),
            alignment: Alignment.center,
            child: Text(
              buttons[3],
              style: const TextStyle(
                fontSize: 36,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "LibreBaskerville",
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFFAD1457),
          title: const Text(
            'Calculator',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Text('00'),
              ),
            ),
            Expanded(child: getRow(['1', '2', '3', '+'], 2)),
            Expanded(child: getRow(['4', '5', '6', '-'], 3)),
            Expanded(child: getRow(['7', '8', '9', '*'], 4)),
            Expanded(child: getRow(['0', 'C', '=', '/'], 5)),
          ],
        ),
      ),
    );
  }
}
