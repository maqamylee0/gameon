import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../bloc/ground_bloc.dart';
import '../bloc/ground_event.dart';
import '../data/Ground.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  // @override
  // void initState() {
  //   super.initState();
  //
  //   //Trigger the load event
  //   context.read<GroundBloc>().add(LoadGround());
  // }


  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    int  selected = 1;
    // var groundBloc = context.watch<GroundBloc>();
    // List<Ground> listOfGrounds = groundBloc.state.listOfGrounds;


    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xfff4f9f9),
        //const Color.fromRGBO(8, 143, 129, 0.08),
        appBar: PreferredSize(

          preferredSize: Size.fromHeight(120.0), // here the desired height

          child: Stack(
            children: [
              Container(
                color: Color(0xff088F81),
                height: 70,),
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

                  actions: [

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconButton(
                          onPressed: (){
                          },
                          icon: const FaIcon(FontAwesomeIcons.search,size: 18,)
                          //Icon(Icons.search,color: Colors.white,size: 32,)
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 20, 40),
                      child: FaIcon(FontAwesomeIcons.sliders,color: Colors.white,size: 18),
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

       body:
       // listOfGrounds.isEmpty
       //     ? CircularProgressIndicator():
       Container(
         padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
         child: Column(
           children: [
             Container(
               // padding: EdgeInsets.all(6),
               height: 90,
                       child: ListView.builder(

                           physics: NeverScrollableScrollPhysics(),
                           // shrinkWrap: true,
                           itemCount:6,
                           scrollDirection: Axis.horizontal,
                           itemBuilder: (context,index){

                             return Day1(index :index, selected: selected,);
                           }),
                     ),
             // SizedBox(height: 5,),
             Container(
                   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),

                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(

                         children: [
                           SvgPicture.asset(
                             'assets/location.svg',
                             height: 16.0,
                             width: 16.0,
                             allowDrawingOutsideViewBox: true,
                           ) ,
                           SizedBox(width: 20,),
                           Text("Maharastra, India"),
                         ],
                       ),

                       TextButton(onPressed:(){}, child:
                       Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       //   crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Text("Change",style: TextStyle(fontSize: 12),),
                           Icon(Icons.arrow_forward_ios,size: 12,)
                         ],

                       )
                       )
                     ]
                   ),
                 ),
             Divider(
               indent: 20,
                 endIndent: 20,
             ),

             Expanded(
               child: SingleChildScrollView(
                 child: ListView.builder(
                     physics: NeverScrollableScrollPhysics(),
                     shrinkWrap: true,
                     itemCount:5,
                     scrollDirection: Axis.vertical,
                     itemBuilder: (context,index){
                       return Grounds();
                     }),
               ),
             ),
                   ],
                 ),
       ),
             ),
           );

  }
}

class Grounds extends StatelessWidget {
  const Grounds({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, 'ground details');
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            //set border radius more than 50% of height and width to make circle
          ),
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
                        image: DecorationImage(image: AssetImage("assets/images/ground.jpeg"), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    height: 120,
                    width: 85,

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
                          padding:EdgeInsets.fromLTRB(0,10,0,0),

                          child: Row(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              Text("20 over",style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Color(0xff033934
                          ))),

                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(Size(40, 20)),
                                  padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(10, 5, 10, 5)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      )
                                  ),
                                ),
                                onPressed: () {
                                },
                                child: Text('10:00 am',style: TextStyle(fontSize: 10),),

                              ),
                              ElevatedButton(

                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(Size(40, 20)),
                                  padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(10, 5, 10, 5)),                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),

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
                                child: Text('1:00 pm',style: TextStyle(color: Colors.grey, fontSize: 10),),

                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(Size(40, 20)),
                                  padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(10, 5, 10, 5)),                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      )
                                  ),

                                ),
                                onPressed: () {
                                },
                                child: Text('4:00pm',style: TextStyle( fontSize: 10),),

                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("30 over",style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,color: Color(0xff033934
                              )),),

                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(Size(40, 20)),
                                  padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(10, 5, 10, 5)),                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),

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
                              SizedBox(width: 20,),
                              ElevatedButton(
                                style: ButtonStyle(

                                  minimumSize: MaterialStateProperty.all(Size(40, 20)),
                                  padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(10, 5, 10, 5)),                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),

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
                    child: Text("Wakanda Internantional Cricket Stadium",style: TextStyle(fontSize:12,fontWeight:FontWeight.w600,color: Color(0xff033934
                    )),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),                  child: Row(

                      children: [
                        SvgPicture.asset(
                          'assets/greyloc.svg',
                          height: 13.0,
                          width: 14.0,
                          allowDrawingOutsideViewBox: true,
                        ),
                        SizedBox(width: 10,),
                        Text("Mumbai, Maharastra, India",style: TextStyle(fontSize: 12,color: Colors.grey),),

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
                        Text("Pitch type : Mat",style: TextStyle(color:Color(0xff033934),fontWeight: FontWeight.w500),),
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.compass,size: 14,color:Color(0xff088F81) ,),
                            SizedBox(width: 20,),
                            Text("Navigate",style: TextStyle(color: Color(0xff088F81),fontWeight: FontWeight.w500),)
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
      ),
    );
  }
}

class Day1 extends StatefulWidget {


   const Day1({
    Key? key, required this.index, required this.selected,
  }) : super(key: key);

   final int index;
   final int selected;
  @override
  State<Day1> createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  @override
  Widget build(BuildContext context) {
    Color background = Colors.white;

    int selected = 1;
    Color newBack = Color(0xff088F81);
    String month ="Jan";
    String date = "03";
    String day = "Sun";
    return InkWell(
      onTap: (){
       setState(() {
         selected = widget.index;
       });
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: selected == widget.index ? newBack:background,
            borderRadius: BorderRadius.circular(15),

        ),
        height: 40,
        width:67,
        child: Column(
          children: [
            Text("$month",style: TextStyle(color:selected == widget.index ? background:Colors.black, fontSize: 12),),
            Text("$date",style: TextStyle(color:selected == widget.index ? background:Colors.black,fontWeight:FontWeight.w600,fontSize: 12),),
            Text("$day",style: TextStyle(color:selected == widget.index ? background:Colors.black,fontSize: 12),)
          ],
        ),
      ),
    );
  }
}


