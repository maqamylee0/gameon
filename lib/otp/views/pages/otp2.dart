import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otp2 extends StatefulWidget {
  const Otp2({Key? key}) : super(key: key);

  @override
  State<Otp2> createState() => _Otp2State();
}

class _Otp2State extends State<Otp2> {
  TextEditingController textEditingController = TextEditingController();
  bool isVerified = false;
  bool canResend = false;
  Timer? timer;
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  String phone = "9900265566";
  String time = "00:59";
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double topHeight = MediaQuery.of(context).size.height * 0.3;
    double totalHeight = MediaQuery.of(context).size.height;
    double totalWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SizedBox(
            height: totalHeight,
            child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                  // color: Colors.transparent,
                  color: const Color(0x00088f81).withOpacity(0.8),

                  image: const DecorationImage(
                    image: AssetImage("images/stadium.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                height: totalHeight * 0.32,

                // color: Colors.brown,
              ),
              Container(
                color: const Color(0x00088f81).withOpacity(0.8),
              ),
              SizedBox(
                height: totalHeight,
                child: Column(
                  children: [
                    Container(
                      // color: Color(0x088F81).withOpacity(0.8),
                      color: Colors.transparent,
                      height: topHeight,
                      child: Center(
                        child: SvgPicture.asset(
                          'logo.svg',
                          alignment: Alignment.bottomCenter,
                          width: MediaQuery.of(context).size.width * 0.08,
                          height: MediaQuery.of(context).size.height * 0.08,
                        ),
                      ),
                    ),
                    //white container
                    Expanded(
                      child: Container(
                        width: totalWidth,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                "Hi!",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Enter OTP",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff7FA89C),
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                                child: Container(
                                    color: Colors.white,

                                    width: totalWidth,
                                    // padding: const EdgeInsets.all(20),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            children: [
                                              GestureDetector(
                                                onTap: () {},
                                                child: SizedBox(

                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [

                                                        Form(
                                                          key: formKey,
                                                          child: Padding(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 8.0,
                                                                  horizontal:
                                                                      30),
                                                              child:
                                                                  PinCodeTextField(
                                                                appContext:
                                                                    context,
                                                                pastedTextStyle:
                                                                    const TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),

                                                                length: 4,
                                                                obscureText:
                                                                    true,
                                                                obscuringCharacter:
                                                                    '*',

                                                                blinkWhenObscuring:
                                                                    true,
                                                                animationType:
                                                                    AnimationType
                                                                        .fade,
                                                                // validator: (v) {
                                                                //   if (v!.length < 3) {
                                                                //     return "I'm from validator";
                                                                //   } else {
                                                                //     return null;
                                                                //   }
                                                                // },
                                                                pinTheme:
                                                                    PinTheme(
                                                                  shape:
                                                                      PinCodeFieldShape
                                                                          .box,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  fieldHeight:
                                                                      60,
                                                                  fieldWidth:
                                                                      60,
                                                                  activeFillColor:
                                                                  const Color.fromRGBO(8, 143, 129, 0.08)                                                ,
                                                                ),
                                                                cursorColor:
                                                          const Color.fromRGBO(8, 143, 129, 0.08),
                                                                animationDuration:
                                                                    const Duration(
                                                                        milliseconds:
                                                                            300),
                                                                enableActiveFill:
                                                                    true,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                               controller: textEditingController,
                                                                onCompleted:
                                                                    (v) {
                                                                  debugPrint(
                                                                      "Completed");
                                                                },
                                                                // onTap: () {
                                                                //   print("Pressed");
                                                                // },
                                                                onChanged:
                                                                    (value) {
                                                                  debugPrint(
                                                                      value);
                                                                  setState(() {
                                                                    currentText =
                                                                        value;
                                                                  });
                                                                },
                                                                beforeTextPaste:
                                                                    (text) {
                                                                  debugPrint(
                                                                      "Allowing to paste $text");
                                                                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                                                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                                                  return true;
                                                                },
                                                              )
                                                          ),
                                                        ),

                                                        const SizedBox(
                                                          height: 20,
                                                        ),



                                                            Text(
                                                                "OTP sent to $phone",style: TextStyle(color:  Color(0xff088F81)),),
                                                        SizedBox(height: 10,),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Icon(Icons.access_time_filled_rounded ,color: Color(0xff088F81),),
                                                            Text("$time",style: TextStyle(color: Color(0xff088F81)),)
                                                          ],
                                                        )
                                                      ],
                                                    ),

                                                ),
                                              ),
                                            ],
                                          ),
                                        ])
                                )),
                            SizedBox(
                              height: 140,
                            ),
                            Container(
                              width: 140,
                              height: 40,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  )),
                                  shadowColor: MaterialStateProperty.all<Color>(
                                      Color.fromRGBO(8, 143, 129, 0.4)),
                                  elevation:
                                      MaterialStateProperty.all<double>(20),
                                ),
                                onPressed: () {
                                  formKey.currentState?.save();
                                },
                                child: Text(
                                  'Login',
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 40,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ])));
  }
}
