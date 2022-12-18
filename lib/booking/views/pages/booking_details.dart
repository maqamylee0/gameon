import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GroundDetails extends StatefulWidget {
  const GroundDetails({Key? key}) : super(key: key);

  @override
  State<GroundDetails> createState() => _GroundDetailsState();
}

class _GroundDetailsState extends State<GroundDetails> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(

        preferredSize: Size.fromHeight(120.0), // here the desired height

        child: Stack(
          children: [
            Container(
              color: Color(0xff088F81),
              height: 100,),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 5),
              child: AppBar(

                flexibleSpace: Container(),
                automaticallyImplyLeading: false,

                leading:
                IconButton(
                    onPressed: (){
                    },
                    icon: const Icon(Icons.menu_outlined)
                ),

                title: Text("Grounds",style: TextStyle(fontWeight:FontWeight.w600,fontSize: 16,color: Colors.white),),


                // title: Text(''),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(10),
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_month_rounded,color: Color(0xff088F81),),
                  SizedBox(width: 20,),
                  Text("Sunday ,21 June 2021",style: TextStyle(fontSize: 14,color: Color(0xff033934)),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/pitch.png"), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)
              ),
              height: deviceHeight*0.2,
              width: deviceWidth,


            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text("Wakanda Internantional Cricket Stadium",style: TextStyle(fontSize:15,fontWeight:FontWeight.w600,color: Color(0xff033934
                    )),),
                  ),

                  // Divider(
                  //   indent: 20,
                  //   color: Colors.grey,
                  //   endIndent: 20,
                  // ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.compass,size: 14,color:Color(0xff088F81) ,),
                          SizedBox(width: 20,),
                          Text("Navigate",style: TextStyle(color: Color(0xff088F81),fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Text("Pitch type : Mat",style: TextStyle(color:Color(0xff033934),fontWeight: FontWeight.w500),),

                    ],
                  ),
                  ),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(20, 5, 20, 5),                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 30,
                            width: 30,

                            decoration: BoxDecoration(

                              color: Color.fromRGBO(114, 202, 193, 0.4),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),

                            child:SvgPicture.asset(
                              'restaurant.svg',
                              height: 10.0,
                              width: 10.0,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 30,
                            width: 30,

                            decoration: BoxDecoration(

                              color: Color.fromRGBO(114, 202, 193, 0.4),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),

                            child:SvgPicture.asset(
                              'toilet.svg',
                              height: 10.0,
                              width: 10.0,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ),
                        ],
                      ),

                      Container(
                        padding: EdgeInsets.all(5),
                        // height: 30,
                        // width: 30,

                        decoration: BoxDecoration(

                          color: Color.fromRGBO(114, 202, 193, 0.4),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                          children: [
                            FaIcon(FontAwesomeIcons.compass,size: 14,color:Color(0xff088F81) ,),
                            SizedBox(width: 10,),
                            Text("2 km far.",),

                          ],
                        ),
                      )

                    ],
                  ),
                  ),
                ],
              ),
            ),
            Card1()
            
          ],
        ),
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  const Card1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool value = false;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Card(
      child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("For 20 Overs"),
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
                        return const BorderSide(color: Colors.grey);
                      }
                      return null; // Defer to default value on the theme or widget.
                    }),
                    // shadowColor:MaterialStateProperty.all<Color>(Color.fromRGBO(8, 143, 129, 0.4)) ,
                    // elevation: MaterialStateProperty.all<double>(20),
                  ),
                  onPressed: () {
                  },
                  child: Text('1:00 pm',style: TextStyle(color: Colors.grey,fontSize: deviceWidth*0.015),),

                ),

              ],
            ),
            Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Team 1:"),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Mumbai Indians"),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xffC9C9C9)),
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
                        child: Text('Booked',style: TextStyle(color:Color(0xff088F81),fontSize: deviceWidth*0.015),),

                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30,),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Team 2:"),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Available"),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(114, 202, 193, 0.4)),
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
                        child: Text('Available',style: TextStyle(color:Color(0xff088F81),fontSize: deviceWidth*0.015),),

                      ),
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
            Row(
              children: [
                Row(
                  children: [
                    Text("Ball Provided",style: TextStyle(fontSize: deviceWidth*0.01),),
                    Checkbox(value: !value, onChanged: ( value){value = !value!;})

                  ],
                ),
                Row(
                  children: [
                    Text("Umpire Provided" ,style: TextStyle(fontSize: deviceWidth*0.01),),
                Checkbox(value: value, onChanged: ( value){value = !value!;})


              ],
                ),
                Row(
                  children: [
                    Text("Ball Detail",style: TextStyle(fontSize: deviceWidth*0.02),),
                    Text("Tennis",style: TextStyle(fontSize: deviceWidth*0.01),)
                  ],
                )
              ],
            )

          ],
        )

      
    );
  }
}
