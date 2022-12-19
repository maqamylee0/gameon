import 'dart:convert';
import 'package:http/http.dart' as http;
import 'booking/views/data/Ground.dart';

class GroundsApiService{
  final _baseUrl = "http://localhost/5000/grounds";

  ///fetch article and return to this app
  Future<List<Ground>> getAllGrounds() async {
    var endpoint = "grounds";
    var fullUrl = _baseUrl;

    //create empty list to be returned
    var listToBeReturned = <Ground>[];

    //make network request
    http.Response response = await http.get(Uri.parse(fullUrl),

    );
    print(" response is${response}");

    //jsonDecode Converts the response body which comes as a string into a map object
    Map<String, dynamic> responseBody = jsonDecode(response.body);

    //filter through the map and get articles list
    var listOfGrounds = responseBody["grounds"];

    //loop through the list and convert the map to Article object
    for(Map<String, dynamic> groundItem in listOfGrounds){
      //Creates an article object
      var ground = Ground.fromJson(groundItem);
      listToBeReturned.add(ground);
    }

    return listToBeReturned;
  }


}