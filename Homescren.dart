import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/about/About.dart';

class homescren extends StatefulWidget {
  const homescren({Key? key}) : super(key: key);

  @override
  State<homescren> createState() => _homescrenState();
}

class _homescrenState extends State<homescren> {
    int _selectedIndex = 0;
  double imageSize = 65;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              //image backgrund
              Positioned(
                  child: Container(
                width: double.maxFinite,
                height: 380,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(aboutlist[_selectedIndex].image),
                      fit: BoxFit.cover),
                ),
              )),
              //icon heart
              Positioned(
                  left: 350,
                  top: 57,
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Icon(CupertinoIcons.heart),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withOpacity(0.6),
                    ),
                  )),
              //icon arrow
              Positioned(
                  left: 25,
                  top: 57,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withOpacity(0.6),
                    ),
                    child: Icon(Icons.arrow_back_ios_new),
                  ))
              //box wite raids
              ,
              Positioned(
                top: 350,
                child: Container(
                  padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                  width: 414,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),

                  //text city name
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            aboutlist[_selectedIndex].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Color.fromARGB(137, 0, 0, 0)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color.fromARGB(255, 139, 103, 244),
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          //text location
                          Text(
                            aboutlist[_selectedIndex].location,
                            style: TextStyle(
                              color: Color.fromARGB(255, 139, 103, 244),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //List builder
              Positioned(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: ListView.builder(
                        itemCount: aboutlist.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedIndex = index;
                                });
                              },
                            ),
                            margin:
                                EdgeInsets.only(left: 300, top: 20, bottom: 0),
                            width: _selectedIndex == index
                                ? imageSize + 13
                                : imageSize,
                            height: _selectedIndex == index
                                ? imageSize + 13
                                : imageSize,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(aboutlist[index].image),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 3.5,
                                      color:
                                          Color.fromARGB(235, 240, 234, 234)),
                                ],
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 255, 255, 255)),
                          );
                        }),
                  ),
                ),
              ),
              // About  cm
              Container(
                margin: EdgeInsets.only(top: 490),
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                color: Color.fromARGB(255, 204, 202, 202),
                                width: 1,
                              )),
                          child: Container(
                            width: 90,
                            height: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Rating"),
                                Text(
                                  aboutlist[_selectedIndex].Rating,
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                color: Color.fromARGB(255, 204, 202, 202),
                                width: 1,
                              )),
                          child: Container(
                            width: 90,
                            height: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Temp"),
                                Text(
                                  aboutlist[_selectedIndex].temp + "	º C",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                color: Color.fromARGB(255, 204, 202, 202),
                                width: 1,
                              )),
                          child: Container(
                            width: 90,
                            height: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("distance"),
                                Text(
                                  aboutlist[_selectedIndex].distance,
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "discription",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          aboutlist[_selectedIndex].discription,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 102, 101, 101)),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Total price",
                                style: TextStyle(
                                    fontSize: 16, fontStyle: FontStyle.italic),
                              ),
                              Text(
                                aboutlist[_selectedIndex].price + "\$",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            width: 90,
                            height: 90,
                            child: ElevatedButton(
                              onPressed: (){
                                
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80),
                                )
                              ),
                              child: Icon(CupertinoIcons.arrow_right,size: 30,),
                              
                            ),
                            
                            
                          ),
                          
                        ),
                        
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}