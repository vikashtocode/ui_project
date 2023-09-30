import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:ui_project/screens/widgets/btn_widget.dart';

class SignUp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back ,color: Colors.black38,),
        // leadingWidth: 18,
        title: Text("Sign Up",style: TextStyle(color: Colors.black38),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,

      ),
      body: SafeArea(

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 23,
              ),
              Text(
                'Register Account',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Mulish"),
              ),
              SizedBox(
                height: 12,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Complete your details or continue \n with social media",textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black45, fontSize: 12),
                     ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Container(
                  width: 350,
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20)),
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.black45),
                      hintText: "Enter Your Name",
                      hintStyle: TextStyle(fontSize: 14, color: Colors.black45),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black45)),
                      suffixIcon: Icon(
                        Icons.mail,
                        size: 20,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Container(
                  width: 350,
                  height: 45,
                  child: TextField(

                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    autofocus: true,
                    enabled: true,
                    decoration: InputDecoration(

                      // filled: true,
                      // fillColor: Colors.orange,
                      // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black45)),
                      // disabledBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(color: Colors.black38),
                      //     borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20)),
                      labelText: "password",
                      labelStyle: TextStyle(color: Colors.black45),
                      hintText: "Enter Your Password",
                      hintStyle: TextStyle(fontSize: 14, color: Colors.black45),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black45)),
                      suffixIcon: Icon(
                        Icons.lock,
                        size: 20,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Container(
                  width: 350,
                  height: 45,
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(

                          borderSide: BorderSide(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20)),
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(color: Colors.black45),
                      hintText: "Enter Your Confirm Pasword",
                      hintStyle: TextStyle(fontSize: 14, color: Colors.black45),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black45)),
                      suffixIcon: Icon(
                        Icons.lock,
                        size: 20,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),

              // BtnWidget(),
              ConstrainedBox(
                  constraints: BoxConstraints.expand(width: 320, height: 45),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Continue'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange.shade800,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                  )),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      child: Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300.withOpacity(0.7),
                                  spreadRadius: 4,
                                  // blurRadius:4 ,
                                  // offset:Offset(0,3)
                                )
                              ]),
                          child: SvgPicture.asset(
                            "images/google-icon.svg",
                            width: 10,
                            height: 10,
                          ))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300.withOpacity(0.7),
                                spreadRadius: 4,
                                // blurRadius:4 ,
                                // offset:Offset(0,3)
                              )
                            ]),
                        child: SvgPicture.asset(
                          "images/facebook-2.svg",
                          width: 10,
                          height: 10,
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      child: Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300.withOpacity(0.7),
                                  spreadRadius: 4,
                                  // blurRadius:4 ,
                                  // offset:Offset(0,3)
                                )
                              ]),
                          child: SvgPicture.asset("images/twitter.svg"))),
                ],
              ),
              SizedBox(height: 14),
              Column(
                children: [
                  Text(
                    "By contining your confirm that your agree",
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: 10,
                        fontFamily: "Mulish"),
                  ),
                  Text(
                    "with our term and Condition",
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: 10,
                        fontFamily: "Mulish"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Row(
//   children: [
//     SizedBox(width: 30),
//     // Icon(Icons.add),
//     SvgPicture.asset(
//       "images/back.svg",
//       color: Colors.black45,
//     ),
//     SizedBox(
//       width: 125.0,
//     ),
//     Text(
//       'Sign Up',
//       style: TextStyle(color: Colors.black45),
//     )
//   ],
// ),