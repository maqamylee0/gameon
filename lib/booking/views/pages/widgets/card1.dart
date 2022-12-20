
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card1 extends StatefulWidget {
  const Card1({
    Key? key,
  }) : super(key: key);

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    bool value = false;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Card(
        elevation: 4,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          //set border radius more than 50% of height and width to make circle
        ),
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("For 20 Overs",style: TextStyle(fontSize:12,height:0.9,fontWeight: FontWeight.w600,color: Color(0xff033934)),),
                  ElevatedButton(

                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(40, 20)),
                      padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(15, 5, 15, 5)),
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
                    child: Text('10:00 am',style: TextStyle(color:Color(0xff088F81),fontSize: 10),),

                  ),

                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Team 1:",style: TextStyle(fontSize:11,color:Color(0xff7FA89C),fontWeight: FontWeight.w400),),


                      Text("Mumbai Indians",style: TextStyle(fontSize:11,fontWeight: FontWeight.w600,color: Color(0xff033934)),),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                        // height: 30,
                        // width: 30,

                        decoration: BoxDecoration(

                          color: Color(0xffe6e8e8),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Row(
                          children: [
                            Text("Booked",style: TextStyle(color:Color(0xff033934),fontSize: 10),),

                          ],
                        ),
                      )
                      // ElevatedButton(
                      //   style: ButtonStyle(
                      //     minimumSize: MaterialStateProperty.all(Size(40, 20)),
                      //     padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(10, 5, 10, 5)),
                      //     backgroundColor: MaterialStateProperty.all<Color>(Color(0xffF4F4F4)),
                      //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      //         RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(5.0),
                      //         )
                      //     ),
                      //     // shadowColor:MaterialStateProperty.all<Color>(Colors.grey) ,
                      //     // elevation: MaterialStateProperty.all<double>(20),
                      //   ),
                      //   onPressed: () {
                      //   },
                      //   child: Text('Booked',style: TextStyle(color:Color(0xff088F81),fontSize: 10),),
                      //
                      // ),
                    ],
                  ),
                ),
                SizedBox(width: 30,),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Team 2:",style: TextStyle(fontSize:11,color:Color(0xff7FA89C),fontWeight: FontWeight.w400),),



                      Text("Available",style: TextStyle(fontSize:11,fontWeight: FontWeight.w600,color: Color(0xff033934)),),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                        // height: 30,
                        // width: 30,

                        decoration: BoxDecoration(

                          color:Color.fromRGBO(114, 202, 193, 0.4) ,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Row(
                          children: [
                            Text("Available",style: TextStyle(color:Color(0xff088F81),fontSize: 10),),

                          ],
                        ),
                      )
    //                   ElevatedButton(
    //                     style: ButtonStyle(
    //
    //                       overlayColor: MaterialStateProperty.all<Color>(Color(     0x14088F81
    // )) ,
    //                       minimumSize: MaterialStateProperty.all(Size(40, 20)),
    //                       padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(10, 5, 10, 5)),
    //                       backgroundColor: MaterialStateProperty.all<Color>(Color(     0x14088F81
    //                       )),
    //                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //                           RoundedRectangleBorder(
    //                             borderRadius: BorderRadius.circular(5.0),
    //                           )
    //                       ),
    //                       // shadowColor:MaterialStateProperty.all<Color>(Colors.grey) ,
    //                       // elevation: MaterialStateProperty.all<double>(20),
    //                     ),
    //                     onPressed: () {
    //                     },
    //                     child: Text('Available',style: TextStyle(color:Color(0xff088F81),fontSize: 10),),
    //
    //                   ),
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
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Text("Ball Provided",style: TextStyle(fontSize: 8),),
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
                      Text("Umpire Provided" ,style: TextStyle(fontSize: 8),),
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
                      Text("Ball Detail :",style: TextStyle(fontSize: 8),),
                      Text("Tennis",style: TextStyle(fontSize: 8),)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.currency_rupee,size: 20,color: Color(0xff088F81)),
                        Text("3000",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 20,color: Color(0xff088F81)),)
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
                        shadowColor:MaterialStateProperty.all<Color>(Color.fromRGBO(8, 143, 129, 0.4)) ,
                        elevation: MaterialStateProperty.all<double>(20),
                      ),
                      onPressed: () {
                      },
                      child: Text('Book now',style: TextStyle(fontSize: 15),),

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
