import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homescren.dart';

import 'package:flutter_application_1/loginscren.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginscren(),
    );
  }
}































// import 'dart:math';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main(List<String> args) {

//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(appBar: AppBar(
//         elevation: 0.4,
//         backgroundColor: Colors.white,
//         actions: [
//           Image.asset("assets/images/masage.png"),
//           Expanded(child: Align(alignment: Alignment.center,child: Text("EXonyx",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),))),
//           Image.asset("assets/images/1.png"),
//       ],),
//       body: Padding(
//         padding: const EdgeInsets.all(18.0),
//         child: Column(children: [
//           Row(children: [
//           Image.asset("assets/images/EX.png"),
//           Padding(
//             padding: const EdgeInsets.all(14.0),
//             child: Text("Currency prices",style: TextStyle(fontSize: 18),),
//           ),
//           ],),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Text("KuCoin allows users to improve their practical experience through a variety of trading and financial products for as low as 1."
//             ,textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(13.0),
//             child: nameprice(),
//           ),
//           SingleChildScrollView(),
//           listview()

//           ,Padding(
//             padding: const EdgeInsets.fromLTRB(0,0,0,0),
//             child: button(),
//           )

//         ]
//         ),
//       ),
//       ),
//     );
//   }
// }
// // varible snakbar msg
// void _ShowSnakBar(BuildContext context , String msg){
//   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg,textAlign: TextAlign.center,style: TextStyle(fontWeight:
//    FontWeight.bold),),backgroundColor: Colors.green,),
//    );
// }
// // button check
// class button extends StatelessWidget {
//   const button({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: SizedBox(
//         child: Container(
//           width: double.infinity,
//           height: 40,
//           decoration: BoxDecoration(
//             color: Color.fromARGB(255, 219, 215, 215),
//             borderRadius: BorderRadius.circular(1000),
//           ),
//           child:
//           Row(
//             children: [
//               SizedBox(
//                 child: TextButton.icon(onPressed: ()=>_ShowSnakBar(context, "Successful update"),
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 179, 80)),
//                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                     RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(1000),
//                     )
//                   )
//                 ),
//                  icon: Icon(
//                    CupertinoIcons.refresh_bold,color: Colors.black,)
//                    , label: Text("refresh",style: TextStyle(color: Color.fromARGB(255, 53, 51, 51),
//                    fontSize: 15,fontWeight: FontWeight.bold),
//                    )
//                    ),
//               ),
//                  SizedBox(width: 30,),
//                  Text("The last update of 1:37",
//                  style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 101, 96, 96)),)
//             ],
//           )
//          ,),
//       ),
//     );
//   }
// }
// // listview
// class listview extends StatelessWidget {
//   const listview({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(2.0),
//       child: Container(
//         width: double.infinity,
//         height: 450,
//         child: ListView.builder(
//           itemCount: 20,
//           itemBuilder: (BuildContext context , int posion){
//           return Padding(
//             padding: const EdgeInsets.all(6.0),
//             child: SizedBox(
//               height: 50,
//               child: Container(
//                 child: Padding(
//                   padding: const EdgeInsets.all(7.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Image.asset("assets/images/btc.png"),
//                       Text("BTC",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 15),),
//                       Text("2200",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 15),),
//                       Text("+8",style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 68, 224, 2)),),
//                     ],
//                   ),
//                 ) ,
//                 //boxshdow
//                 decoration: BoxDecoration(
//                   boxShadow:[
//                     BoxShadow(
//                       color: Colors.black,
//                       blurRadius: 4,
//                     )
//                   ],
//                   borderRadius: BorderRadius.circular(1000),color: Colors.blue),
//                 ),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }
// // name and price and logo
// class nameprice extends StatelessWidget {

//   const nameprice({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(0,0,0,0),
//       child: Container(child:
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Text("logo",style: TextStyle(fontWeight:FontWeight.bold),),
//           Text("name",style: TextStyle(fontWeight:FontWeight.bold),),
//           Text("price",style: TextStyle(fontWeight:FontWeight.bold),),
//           Text("Change",style: TextStyle(fontWeight:FontWeight.bold),),
//         ],
//       ),
//       width: double.infinity,
//       height: 35,
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black,
//             blurRadius: 7
//           )
//         ],
//         color: Colors.amber,
//         borderRadius: BorderRadius.circular(1000)),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(width: 500,height: 50,),
//             CircleAvatar(
//               radius: 70,
//               backgroundImage: AssetImage('assets/images/myphoto.jpeg'),
//             ),
//             Text(
//               "amirkhalili",
//               style: TextStyle(
//                 color: Color.fromARGB(255, 255, 252, 252),
//                 fontFamily: 'Pacifico',
//                 fontSize: 60,
//                 fontWeight: FontWeight.bold
//               ),
//               ),
//               Text(
//                 "Flutter developer",
//                 style: TextStyle(
//                   color: Color.fromARGB(255, 214, 208, 208),
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                   letterSpacing: 2.5,
//                 ),
//                 ),
//                 SizedBox(
//                   height: 10.0,
//                   width: 150,
//                   child:Divider(
//                     color: Colors.white,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 5,
//                           color: Color.fromARGB(255, 73, 73, 73)
//                         )
//                       ],
//                       borderRadius: BorderRadius.circular(10),
//                     color: Colors.white,
//                     ),
//                     margin: EdgeInsets.symmetric(vertical: 10,
//                      horizontal: 25),
//                     child:
//                     Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: Row(
//                         children: [
//                         SizedBox(width: 6,),
//                           Icon(Icons.phone,color: Colors.teal,),
//                           SizedBox(width: 25,),
//                           Text("+044 123 456 789"
//                           ,style: TextStyle(fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.teal),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                 ),
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(10,0,10,10),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 5,
//                           color: Color.fromARGB(255, 73, 73, 73),
//                         )
//                       ],
//                       borderRadius: BorderRadius.circular(10),
//                     color: Colors.white,),
//                     margin: EdgeInsets.symmetric(vertical: 1,
//                     horizontal: 25),
//                     child: Padding(
//                       padding: const EdgeInsets.all(15.0),
//                       child: Row(
//                         children: [
//                           SizedBox(width: 7,),
//                           Icon(Icons.email,color: Colors.teal,),
//                           SizedBox(width: 26,),
//                           Text("lizzy.flutter@gmail.com",style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15,
//                             color: Colors.teal,
//                           ),)
//                         ],
//                       ),
//                     ) ,
//                   ),
//                 )
//           ],
//         ),
//       ),
//     );
//   }

// }
