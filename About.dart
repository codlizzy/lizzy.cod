import 'package:flutter/scheduler.dart';

class About {
  String name;
  String location;
  String image;
  String price;
  String temp;
  String discription;
  String Rating;
  String distance;
  About(
      {required this.name,
      required this.image,
      required this.location,
      required this.Rating,
      required this.discription,
      required this.price,
      required this.distance,
      required this.temp});
}

List <About> aboutlist = [
  About(
      name: "new York",
      image: "assets/images/jngl3.jpg",
      location: "US new york",
      Rating: "6.5",
      discription: "New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial,",
      price: "4000",
      temp: "30",
      distance: "7km"
      ),
  About(
      name: " Paris",
      image: "assets/images/jngl2.jpg",
      location: "europe",
      Rating: "4.5",
      discription: "Also known as the Latin Quarter, the 5th arrondissement is home to the Sorbonne university and student-filled cafes. It's also known for its bookshops, including the famed Shakespeare & Company.",
      price: "2999",
      distance: "10km",
      temp: "20"),
  About(
      name: "los angeles",
      image: "assets/images/jangl.jpg",
      location: "Us new york",
      Rating: "7.5",
      discription: "Los Angeles is a sprawling Southern California city and the center of the nation’s film and television industry. Near its iconic Hollywood sign, studios such as Paramount Pictures, Universal and Warnerd",
      price: "10000",
      distance: "5km",
      temp: "40"),
  About(
      name: "Canada",
      image: "assets/images/jngl4.jpg",
      location: "europe",
      Rating: "3.7",
      discription: "Canada is a country in North America. It is to the north of the United States. Its land reaches from the Atlantic Ocean in the east to the Pacific Ocean in the west. The Arctic Ocean is to the nort.",
      price: "7000",
      distance: "3km",
      temp: "60"),
];
