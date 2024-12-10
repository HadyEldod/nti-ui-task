import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  Screen({super.key});

  final List<String> items = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
    '0',
    '1',
    '2',
    '3',
    '4',
    '5'
  ];
  final List<Color> colors = [
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.teal,
    Colors.cyan,
    Colors.indigo,
    Colors.amber,
    Colors.lime,
    Colors.deepOrange,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.blueGrey,
    Colors.lightGreen,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.black54,
    Colors.lightBlueAccent,
    Colors.deepOrangeAccent,
    Colors.pinkAccent,
    Colors.indigoAccent,
    Colors.lightGreenAccent,
    Colors.amberAccent,
    Colors.redAccent,
    Colors.blueAccent,
    Colors.cyanAccent,
    Colors.orangeAccent,
    Colors.purpleAccent,
    Colors.limeAccent
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: colors[index % colors.length],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(child: Text(items[index])),
            ),
          );
        });
  }
}
