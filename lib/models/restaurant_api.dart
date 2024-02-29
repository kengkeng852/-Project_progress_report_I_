import 'dart:convert'; 
import 'package:http/http.dart' as http;

class Restaurant {
  final String name;
  final double ratingValue;
  final int reviewCount;
  final String mainPhotoSrc;
  final String countryname;

  Restaurant(
      {required this.name,
      required this.ratingValue,
      required this.reviewCount,
      required this.mainPhotoSrc,
      required this.countryname});
}

 Future<List<Restaurant>> getRestaurants() async {
  var uri = Uri.https('the-fork-the-spoon.p.rapidapi.com', '/restaurants/v2/list', {
    'queryPlaceValueCityId': '348156',
    'pageSize': '10',
    'pageNumber': '1'
  });

  final response = await http.get(uri, headers: {
    'X-RapidAPI-Key': '376f1a036fmsh668e1b6780876ccp19c406jsne0d2d21f55a0',
    'X-RapidAPI-Host': 'the-fork-the-spoon.p.rapidapi.com'
  });

  if (response.statusCode == 200) { // Check for success
    Map data = jsonDecode(response.body);
    List<Restaurant> restaurants = [];

    for (var restaurantData in data['data']) {
      restaurants.add(Restaurant(
        name: restaurantData['name'],
        ratingValue: restaurantData['aggregateRatings']['thefork']['ratingValue'],
        reviewCount: restaurantData['aggregateRatings']['thefork']['reviewCount'],
        mainPhotoSrc: restaurantData['mainPhotoSrc'],
        countryname: restaurantData['address']['country'],
      ));
    }
    return restaurants;
  } else {
    // Handle API errors
    throw Exception('Failed to fetch restaurants');
  }
}
