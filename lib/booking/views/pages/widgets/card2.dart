import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card2 extends StatefulWidget {
  const Card2({
    Key? key,
  }) : super(key: key);

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    bool value = false;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Card(
      child:
      Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("For 30 Overs",style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xff033934)),),
                ElevatedButton(

                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),

                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(

                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),

                      ),

                    ),
                    side: MaterialStateBorderSide.resolveWith((Set<MaterialState> states) {
                      {
                        return const BorderSide(color: Color(0xff088F81));
                      }
                      return null; // Defer to default value on the theme or widget.
                    }),
                    // shadowColor:MaterialStateProperty.all<Color>(Color.fromRGBO(8, 143, 129, 0.4)) ,
                    // elevation: MaterialStateProperty.all<double>(20),
                  ),
                  onPressed: () {
                  },
                  child: Text('03:00 am',style: TextStyle(color:Color(0xff088F81),fontSize: deviceWidth*0.015),),

                ),

              ],
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Text("Team 1:",style: TextStyle(color:Color(0xff7FA89C),fontWeight: FontWeight.w400),),
                    //
                    //
                    // Text("Mumbai Indians",style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xff033934)),),
                    SizedBox(height: 10,),
                    ElevatedButton(
                      style: ButtonStyle(
                        // backgroundColor: MaterialStateProperty.all<Color>(Color(0xffF4F4F4)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            )
                        ),
                        shadowColor:MaterialStateProperty.all<Color>(Colors.grey) ,
                        elevation: MaterialStateProperty.all<double>(20),
                      ),
                      onPressed: () {
                      },
                      child: Text('Available',style: TextStyle(color:Colors.white,fontSize: deviceWidth*0.015),),

                    ),
                  ],
                ),
              ),
              SizedBox(width: 30,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Text("Team 2:",style: TextStyle(color:Color(0xff7FA89C),fontWeight: FontWeight.w400),),
                    //
                    //
                    //
                    // Text("Available",style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xff033934)),),
                    // SizedBox(height: 10,),

                    ElevatedButton(
                      style: ButtonStyle(
                        // backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(114, 202, 193, 0.4)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            )
                        ),
                        // shadowColor:MaterialStateProperty.all<Color>(Colors.grey) ,
                        // elevation: MaterialStateProperty.all<double>(20),
                      ),
                      onPressed: () {
                      },
                      child: Text('Available',style: TextStyle(color:Colors.white,fontSize: deviceWidth*0.015),),

                    ),
                    SizedBox(height: 40,)
                  ],
                ),
              ),

            ],
          ),
          Divider(
            color: Colors.grey,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Text("Ball Provided",style: TextStyle(fontSize: deviceWidth*0.011),),
                    Checkbox(value: !value, onChanged: ( r){
                      setState(() {
                        value = !value!;
                      });
                    },
                      fillColor: MaterialStateProperty.all<Color>(Color(0xffF4F4F4)),

                      activeColor: Color(0xffF4F4F4),
                      checkColor: Color(0xff088F81),
                      // side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),

                    )

                  ],
                ),
                Row(
                  children: [
                    Text("Umpire Provided" ,style: TextStyle(fontSize: deviceWidth*0.011),),
                    Checkbox(value: value, onChanged: ( r){
                      setState(() {
                        value = !value!;
                      });
                    },
                      fillColor: MaterialStateProperty.all<Color>(Color(0xffF4F4F4)),

                      activeColor: Color(0xffF4F4F4),
                      checkColor: Color(0xff088F81),
                      // side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    )


                  ],
                ),
                Row(
                  children: [
                    Text("Ball Detail :",style: TextStyle(fontSize: deviceWidth*0.011),),
                    Text("Tennis",style: TextStyle(fontSize: deviceWidth*0.011),)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.currency_rupee,size: 20,color: Color(0xff088F81)),
                      Text("6000",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 20,color: Color(0xff088F81)),)
                    ],
                  ),
                ),
                Container(
                  height: 35,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )
                      ),
                      // shadowColor:MaterialStateProperty.all<Color>(Color.fromRGBO(8, 143, 129, 0.4)) ,
                      // elevation: MaterialStateProperty.all<double>(20),
                    ),
                    onPressed: () {
                    },
                    child: Text('Book now',style: TextStyle(fontSize: deviceWidth*0.02),),

                  ),
                ),

              ],
            ),
          ),


        ],
      )

    );
  }
}