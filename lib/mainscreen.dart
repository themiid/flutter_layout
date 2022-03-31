import 'package:flutter/material.dart';
import 'package:flutter_layout/done_tourism_list.dart';
import 'package:flutter_layout/tourism_list.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pacitan Tourism Place'),
        backgroundColor: Color(0xFF182C61),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const DoneTourismList();
                }),);
            },
          )
        ],
      ),
      body: TourismList(),
    );
  }
}
