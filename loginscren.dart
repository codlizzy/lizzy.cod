
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'Homescren.dart';

class Loginscren extends StatelessWidget {
  TextEditingController unamecontroller = TextEditingController();
  TextEditingController pwdamecontroller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            // image 
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Container(
                height: 410,
                width: 410,
                child: Image.asset("assets/images/login.webp"),
              ),
            ),
            //email and password
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 250),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(right: 40, left: 40),
                  child: TextField(
                    controller: unamecontroller,
                    keyboardType: TextInputType.emailAddress,
                    
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      
                      suffix: GestureDetector(
                        onTap: () {
                          unamecontroller.clear();
                        },
                        child: Icon(Icons.clear),
                      ),
                      
                      labelText: "Email ID",
                      hintText: "Enter your Email ",
                      
                      prefixIcon: Icon(Icons.alternate_email_outlined),
                      
                    ),
                    
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 40, left: 40),
                  child: TextField(
                    controller: pwdamecontroller,
                    
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    
                    obscureText: true,
                    
                    decoration: InputDecoration(
                    
                      suffix: GestureDetector(
                        onTap: () {
                          pwdamecontroller.clear();
                        },
                        child: Icon(Icons.clear),
                      ),
                      labelText: " Password ",
                      hintText: "Enter your Password ",
                      prefixIcon: Icon(Icons.lock_outline)
                    ),
                  ),
                  
                ),
                SizedBox(height: 24),
                SizedBox(
                  width: 320,
                  height: 55,
                  child:   ElevatedButton(
                    
                    onPressed: () {
                      if(unamecontroller.text == ""&& pwdamecontroller.text == ""){
                        ShowSnakBar(context, "");
                        
                      }else{
                        
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> homescren()));
                      }
                      
                      // if(unamecontroller ==  unamecontroller = null; ShowSnakBar(context, "por"););
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => homescren()));
                    },
                    
                    style: ElevatedButton.styleFrom(
                      
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      
                    ),
                    
                    ),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Or,login with...",
                        style: TextStyle(
                            color: Color.fromARGB(255, 131, 131, 131)),
                      ),
                    ],
                  ),
                ),

                Positioned(
                    child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            margin: EdgeInsets.only(left: 20,bottom: 13),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                    color: Color.fromARGB(255, 209, 207, 207))),
                            child: Container(
                              width: 110,
                              height: 60,
                              child: Column(
                                children: [
                                  Image.asset("assets/images/google.png",
                                      height: 60, fit: BoxFit.scaleDown),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.only(bottom: 13),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                    color: Color.fromARGB(255, 209, 207, 207))),
                            child: Container(
                              width: 110,
                              height: 60,
                              child: Column(
                                children: [
                                  Image.asset("assets/images/facbook.png",
                                      height: 60, fit: BoxFit.scaleDown),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            margin: EdgeInsets.only(right: 20,bottom: 13),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                    color: Color.fromARGB(255, 209, 207, 207))),
                            child: Container(
                              width: 110,
                              height: 60,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/apple.png",
                                    height: 58,
                                    fit: BoxFit.scaleDown,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 100, top: 14),
                        child: Row(
                          children: [
                            Text(
                              "New To iThickLogistics?",
                              style: TextStyle(fontSize: 15),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 4,
                              ),
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 5, 109, 194)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ))

                // Container(
                //   width: 330,
                //   height: 57,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(15),
                //     color: Color.fromARGB(255, 3, 134, 241),

                //   ),

                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 18),
                //     child: Text("Login",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  // Snakbar
  void ShowSnakBar(BuildContext context, String smg) {
    ScaffoldMessenger.of(context).showSnackBar(
      
      SnackBar(
        
        backgroundColor: Colors.red,
        shape: StadiumBorder(),
        behavior: SnackBarBehavior.floating,
        duration: Duration(milliseconds: 1650),
        margin: EdgeInsets.symmetric(vertical: 0,horizontal: 50),
        content: Row(
          children: [
            
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Icon(Icons.info_outline,color: Colors.white,),
            ),
            SizedBox(width: 7,),
         
             Text("Fill the field!",textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              
              ),
              
           
            
          ],
        ),
        // behavior: SnackBarBehavior.floating,
        // shape: StadiumBorder(),
        // duration: Duration(milliseconds: 1700),
        
        // elevation: 0,
        // margin: EdgeInsets.symmetric(horizontal: 70),
        // backgroundColor: Colors.red,
        // content: Text(smg,
        // textAlign: TextAlign.center,style: TextStyle(
          
        //   fontWeight: FontWeight.bold,
          
        //   color: Color.fromARGB(255, 255, 255, 255)
        //   ),
        //   ),
          )
          );
  }
}
