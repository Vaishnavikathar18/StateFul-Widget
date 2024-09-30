import 'package:flutter/material.dart';

void main() {
  runApp(const PlayersApp());
}

class PlayersApp extends StatefulWidget {
  const PlayersApp({super.key});

  @override
  State<PlayersApp> createState() => _PlayersAppState();
}

class _PlayersAppState extends State<PlayersApp> {
  int _counter = 0;

  // Use 'String' with an uppercase 'S' instead of 'string'
  List<String> playerList = <String>[
    "https://cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg",
    "https://cdn.britannica.com/48/252748-050-C514EFDB/Virat-Kohli-India-celebrates-50th-century-Cricket-November-15-2023.jpg",
    "https://imgeng.jagran.com/images/2023/apr/Sachin11682274529876.jpg",
    "https://bsmedia.business-standard.com/_media/bs/img/article/2022-03/15/full/1647365891-7103.jpg",
    "https://images.indianexpress.com/2023/09/Rahul-15.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Players',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Players App"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                playerList[_counter],
                height: 300,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (_counter < playerList.length - 1) {
                _counter++;
              } else {
                _counter = 0;
              }
            });
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}