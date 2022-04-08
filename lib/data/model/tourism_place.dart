class TourismResult {
  TourismResult({
    required this.status,
    required this.message,
    required this.tourismPlaceList,
  });

  int status;
  String message;
  List<TourismPlace> tourismPlaceList;

  factory TourismResult.fromJson(Map<String, dynamic> json) => TourismResult(
        status: json["status"],
        message: json["message"],
        tourismPlaceList: List<TourismPlace>.from(json["data"]
            .map((x) => TourismPlace.fromJson(x))
            .where((tourism) =>
                tourism.name != null &&
                tourism.location != null &&
                tourism.imageAsset != null &&
                tourism.description != null &&
                tourism.openDay != null &&
                tourism.openHour != null &&
                tourism.price != null &&
                tourism.imgSlider1 != null &&
                tourism.imgSlider2 != null &&
                tourism.imgSlider3 != null)),
      );
}

class TourismPlace {
  String name;
  String location;
  String imageAsset;
  String description;
  String openDay;
  String openHour;
  String price;
  String imgSlider1;
  String imgSlider2;
  String imgSlider3;

  TourismPlace({
    required this.name,
    required this.location,
    required this.imageAsset,
    required this.description,
    required this.openDay,
    required this.openHour,
    required this.price,
    required this.imgSlider1,
    required this.imgSlider2,
    required this.imgSlider3,
  });

  factory TourismPlace.fromJson(Map<String, dynamic> json) => TourismPlace(
        name: json["name"],
        location: json["location"],
        imageAsset: json["imageAsset"],
        description: json["description"],
        openDay: json["openDay"],
        openHour: json["openHour"],
        price: json["price"],
        imgSlider1: json["imgSlider1"],
        imgSlider2: json["imgSlider2"],
        imgSlider3: json["imgSlider3"],
      );
}
