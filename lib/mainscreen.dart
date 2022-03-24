import 'package:flutter/material.dart';
import 'package:flutter_layout/detailscreen.dart';
import 'package:flutter_layout/model/tourism_place.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Pacitan Tourism Place'),
        backgroundColor: Color(0xFF182C61),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: listItem(place),
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}

Widget listItem(TourismPlace place) {
  return Card(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Image.asset(place.imageAsset),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  place.name,
                  style: TextStyle(fontSize: 18.0)
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(place.location,
                style: TextStyle(fontSize: 15.0),),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
