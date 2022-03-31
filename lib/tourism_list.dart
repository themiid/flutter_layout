import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/detailscreen.dart';
import 'package:flutter_layout/list_item.dart';
import 'package:flutter_layout/model/tourism_place.dart';
import 'package:flutter_layout/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key,}) : super(key: key);
      
  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  // final List<TourismPlace> _doneTourismPlaceList = [];
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Pancer Door Beach',
      location: 'Ploso, Pacitan',
      imageAsset: 'assets/images/01pancer.jpg',
      description:
          'Pancer Door Beach is one series of Teleng Ria Beach, sea wave’s Pancer Door Beach is larger than Teleng Ria Beach. Great surf is often utilized by surfers to show his ability to attack the current high waves.',
      openDay: 'Open Everyday',
      openHour: 'Open 24 Hours',
      price: 'IDR 5.000',
      imgSlider1: 'assets/images/03pancer.jpg',
      imgSlider2: 'assets/images/01pancer.jpg',
      imgSlider3: 'assets/images/04pancer.jpg',
    ),
    TourismPlace(
      name: 'Cokel River',
      location: 'Watukarung, Pacitan',
      imageAsset: 'assets/images/01cokel.jpg',
      description:
          'The clean water of Kali Cokel or the Cokel river has hook so many people to come to see its beauty. Located at Watu Karang , Pringkuku, Pacitan this river will give you a beautiful scenery that will melt your heart.',
      openDay: 'Open Everyday',
      openHour: 'Open 24 Hours',
      price: 'IDR 5.000',
      imgSlider1: 'assets/images/01cokel.jpg',
      imgSlider2: 'assets/images/02pancer.jpg',
      imgSlider3: 'assets/images/01gong.jpg',
    ),
    TourismPlace(
      name: 'Gong Cave',
      location: 'Punung, Pacitan',
      imageAsset: 'assets/images/01gong.jpg',
      description:
          'Gong Cave is an amazing tourist attraction owned by the Province of East Java (East Java) which is predicted to be the most beautiful cave in Southeast Asia.',
      openDay: 'Open Everyday',
      openHour: '07.00 AM - 04.00 PM',
      price: 'IDR 20.000',
      imgSlider1: 'assets/images/01gong.jpg',
      imgSlider2: 'assets/images/01cokel.jpg',
      imgSlider3: 'assets/images/02pancer.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget){
              return ListItem(
                place: place, 
                isDone: data.doneTourismPlaceList.contains(place), 
                onCheckboxClick: (bool? value){
                  setState((){
                    if(value!=null){
                      value
                          ? data.doneTourismPlaceList.add(place)
                          : data.doneTourismPlaceList.remove(place);
                    }
                  });
                });
            }
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
