import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gameon/booking/views/pages/widgets/card1.dart';
import 'package:gameon/booking/views/pages/widgets/card2.dart';

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
      // backgroundColor: Color(0xfff4f9f9),

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

                title: Text("Ground Details",style: TextStyle(fontWeight:FontWeight.w600,fontSize: 16,color: Colors.white),),


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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              // SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/calenda.svg',
                      height: 20.0,
                      width: 20.0,
                      allowDrawingOutsideViewBox: true,
                    ) ,
                    SizedBox(width: 20,),
                    Text("Sunday ,21 June 2021",style: TextStyle(fontWeight:FontWeight.w600,fontSize: 14,color: Color(0xff033934)),)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/pitch.png"), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15)
                ),
                height: deviceHeight*0.2,
                width: deviceWidth,


              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                      child: Text("Wakanda Internantional Cricket Stadium",style: TextStyle(fontSize:12,fontWeight:FontWeight.w600,color: Color(0xff033934
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
                            SvgPicture.asset(
                              'assets/location.svg',
                              height: 13.0,
                              width: 14.0,
                              allowDrawingOutsideViewBox: true,
                            )      ,
                            SizedBox(width: 10,),
                            Text("Navigate",style: TextStyle(color: Color(0xff088F81),decoration: TextDecoration.underline,fontWeight: FontWeight.w500,fontSize: 12),)
                          ],
                        ),
                        Row(
                          children: [
                            Text("Pitch type :",style: TextStyle(fontSize:12,color:Color(0xff033934),fontWeight: FontWeight.w500),),
                            Text(" Mat",style: TextStyle(fontSize:12,color:Color(0xff033934),fontWeight: FontWeight.w600),),

                          ],
                        )

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
                              height: 25,
                              width: 25,

                              decoration: BoxDecoration(

                                color: Color.fromRGBO(114, 202, 193, 0.4),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),

                              child:SvgPicture.asset(
                                'assets/restaurant.svg',
                                height: 10.0,
                                width: 10.0,
                                allowDrawingOutsideViewBox: true,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 25,
                              width: 25,

                              decoration: BoxDecoration(

                                color: Color.fromRGBO(114, 202, 193, 0.4),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),

                              child:SvgPicture.asset(
                                'assets/toilet.svg',
                                height: 10.0,
                                width: 10.0,
                                allowDrawingOutsideViewBox: true,
                              ),
                            ),
                          ],
                        ),

                        Container(
                          padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                          // height: 30,
                          // width: 30,

                          decoration: BoxDecoration(

                            color: Color.fromRGBO(114, 202, 193, 0.4),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
              Container(
                  decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0xffdaeae8),
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Card1()),
              Container(
                  decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0xffdaeae8),
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Card2())

            ],
          ),
        ),
      ),
    );
  }
}


