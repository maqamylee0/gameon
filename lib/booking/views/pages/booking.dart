import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff4f9f9),
        //const Color.fromRGBO(8, 143, 129, 0.08),
        appBar: PreferredSize(

          preferredSize: Size.fromHeight(120.0), // here the desired height

          child: Stack(
            children: [
              Container(
                color: Color(0xff088F81),
                height: 100,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 10),
                child: AppBar(

                  flexibleSpace: Container(),
                  automaticallyImplyLeading: false,

                  leading:
                  IconButton(
                      onPressed: (){
                      },
                      icon: const Icon(Icons.menu_outlined)
                  ),

                  title: Text("Grounds",style: TextStyle(fontSize: 24,color: Colors.white),),

                  actions: [

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconButton(
                          onPressed: (){
                          },
                          icon: const Icon(Icons.search,color: Colors.white,size: 36)
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconButton(
                          onPressed: (){
                          },
                          icon: const FaIcon(FontAwesomeIcons.sliders,color: Colors.white,size: 26)
                      ),
                    )

                  ],
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
         padding: EdgeInsets.all(10),
         child: Column(
           children: [
             Container(
               padding: EdgeInsets.all(10),
               height: 100,
                       child: ListView.builder(
                           physics: NeverScrollableScrollPhysics(),
                           shrinkWrap: true,
                           itemCount:6,
                           scrollDirection: Axis.horizontal,
                           itemBuilder: (context,index){
                             return Day1();
                           }),
                     ),
             SizedBox(height: 10,),
             Card(
               child: Container(
                 padding: EdgeInsets.all(15),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     FaIcon(FontAwesomeIcons.locationDot),
                     Text("Maharastra, India"),
                     TextButton(onPressed:(){}, child:
                     Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     //   crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text("Change"),
                         Icon(Icons.arrow_forward_ios,size: 15,)
                       ],

                     )
                     )
                   ]
                 ),
               ),
             ),
             Expanded(
               child: ListView.builder(
                   physics: NeverScrollableScrollPhysics(),
                   shrinkWrap: true,
                   itemCount:5,
                   scrollDirection: Axis.vertical,
                   itemBuilder: (context,index){
                     return Ground();
                   }),
             ),
                   ],
                 ),
       ),
             ),
           );

  }
}

class Ground extends StatelessWidget {
  const Ground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("images/ground.jpeg"), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height: 94,
                  width: 83,

                  // child: FittedBox(
                  //
                  //   child: Image.asset('images/ground.jpeg'),
                  //   fit: BoxFit.fill,
                  // ),
                ),
                // Container(
                //   height: 150,
                //     width: 100,
                //     Bo
                //     child: Image.asset("images/ground.jpeg")),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(

                        padding: EdgeInsets.all(2),
                        child: Row(

                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("20 over"),

                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 80,
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
                                child: Text('10:00 am',style: TextStyle(fontSize: 10),),

                              ),
                            ),
                            SizedBox(
                              width: 80,
                              child: ElevatedButton(

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
                                child: Text('1:00pm',style: TextStyle(color: Colors.grey,fontSize: 10),),

                              ),
                            ),
                            SizedBox(
                              width: 80,
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
                                child: Text('4:00pm',style: TextStyle(fontSize: 10),),

                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("30 over"),

                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            SizedBox(
                              width: 80,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),

                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      )
                                  ),
                                  side: MaterialStateBorderSide.resolveWith((Set<MaterialState> states) {
                                    {
                                      return const BorderSide(color: Colors.red);
                                    }
                                    return null; // Defer to default value on the theme or widget.
                                  }),
                                  // shadowColor:MaterialStateProperty.all<Color>(Color.fromRGBO(8, 143, 129, 0.4)) ,
                                  // elevation: MaterialStateProperty.all<double>(20),
                                ),
                                onPressed: () {
                                },
                                child: Text('2:00pm',style: TextStyle(color: Colors.red,fontSize: 10),),

                              ),
                            ),
                            SizedBox(width: 20,),
                            SizedBox(
                              width: 80,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),

                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      )
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
                                child: Text('4:00pm',style: TextStyle(color: Colors.grey,fontSize: 10),),

                              ),
                            ),

                          ],
                        ),
                      )

                    ],
                  ),
                )

              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text("Wakanda Internantional Cricket Stadium"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),                  child: Row(

                    children: [
                      FaIcon(FontAwesomeIcons.locationDot,size: 14,),
                      SizedBox(width: 10,),
                      Text("Mumbai, Maharastra, India"),

                    ],
                  ),
                ),
                Divider(
                  indent: 20,
                  color: Colors.grey,
                  endIndent: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text("Pitch type : Mat"),
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.compass,size: 14,),
                          SizedBox(width: 20,),
                          Text("Navigate")
                        ],
                      )
                    ],
                  ),
                )

              ],
            )
          ],
        ),
      ),
    );
  }
}

class Day1 extends StatelessWidget {
  const Day1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String month ="Jan";
    String date = "03";
    String day = "Sun";
    return Container(
      // margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(15),

      ),
      height: 65,
      width: 66,
      child: Column(
        children: [
          Text("$month"),
          Text("$date"),
          Text("$day")
        ],
      ),
    );
  }
}


