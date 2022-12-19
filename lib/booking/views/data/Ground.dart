
import 'package:intl/intl.dart';

class Ground{
  String title;
  String location;
  String urlToImage;
  String pitchType;
  String distance;
  String cost;


  Ground({
    required this.title,
    required this.location,
    required this.urlToImage,
    required this.pitchType,
    required this.distance,
    required this.cost
  });

  factory Ground.fromJson(Map<String, dynamic> json){
    // DateTime date = DateFormat("yyyy-MM-ddTHH:mm:ssZ").parse(json["publishedAt"]);
    // var dateToBeShown = DateFormat("yyyy-MM-dd HH:mm").format(date);
    // String jsonContent = json["content"] ?? "";
    //
    // //Remove the text showing remaining content
    // List<String> stringList = jsonContent.split("[");
    // var content = jsonContent.replaceAll("[${stringList.last}", "");

    return Ground(
        title: json["title"] ?? "",
        location: json["location"] ?? "",
        urlToImage: json["urlToImage"] ?? "",
        pitchType: json['pitchType'],
        distance: json["distance"] ?? "",
        cost: json['cost']
    );
  }
}