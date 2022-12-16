import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Otp1 extends StatefulWidget {
  const Otp1({Key? key}) : super(key: key);

  @override
  State<Otp1> createState() => _Otp1State();
}

class _Otp1State extends State<Otp1> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  @override
  Widget build(BuildContext context) {
    double topHeight = MediaQuery.of(context).size.height*0.3;
    double totalHeight = MediaQuery.of(context).size.height;
    double totalWidth = MediaQuery.of(context).size.width;



    return Scaffold(
      body: SizedBox(
        height: totalHeight ,

        child: Stack(
            children: [
        Container(
          decoration: BoxDecoration(
            // color: Colors.transparent,
            color: const Color(0x00088f81).withOpacity(0.8),

            image: const DecorationImage(
              image: AssetImage("images/stadium.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        height: totalHeight*0.32,

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
              child:Center(
                child: SvgPicture.asset(
                  'logo.svg',
                  alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width*0.08,
                  height: MediaQuery.of(context).size.height*0.08,
                ),

              ),
            ),

            Expanded(

              child: Container(
                width:totalWidth ,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    const SizedBox(height: 20,),

                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text("Hi!",style:TextStyle(fontSize: 20,color:Colors.black,decoration: TextDecoration.none,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Let's Get Started",style:TextStyle(fontSize: 14,color:Color(0xff7FA89C),fontWeight: FontWeight.w400,decoration: TextDecoration.none),textAlign: TextAlign.center,),
                    ),
                   const SizedBox(height: 30,),
                   Container(
                     width: totalWidth,
                     padding: const EdgeInsets.all(20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:  [
                         Text("Enter Phone Number",style: TextStyle(color: Color(0xff033934),fontFamily: 'Poppins',fontWeight: FontWeight.w500,fontSize: 14,decoration: TextDecoration.none),),
                         Container(

                           margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                           decoration: BoxDecoration(
                             color: Color.fromRGBO(8, 143, 129, 0.08),
                               borderRadius: BorderRadius.all( Radius.circular(8)

                               ),
                             border: Border.all(color: Color(0xff088F81)

                             )

                           ),
                           child: InternationalPhoneNumberInput(

                              onInputChanged: (PhoneNumber number) {
                                print(number.phoneNumber);
                              },
                              onInputValidated: (bool value) {
                                print(value);
                              },
                              selectorConfig: const SelectorConfig(
                                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                              ),
                              ignoreBlank: false,
                              autoValidateMode: AutovalidateMode.disabled,
                              selectorTextStyle: TextStyle(color: Colors.black),
                              initialValue: number,
                              textFieldController: controller,
                              formatInput: false,
                              inputBorder: InputBorder.none,
                              keyboardType:
                              TextInputType.numberWithOptions(signed: true, decimal: true),
                              onSaved: (PhoneNumber number) {
                                print('On Saved: $number');
                              },
                            ),
                         ),
                             // ElevatedButton(
                             //   onPressed: () {
                             //     formKey.currentState?.validate();
                             //   },
                             //   child: Text('Validate'),
                             // ),
                             // ElevatedButton(
                             //   onPressed: () {
                             //     getPhoneNumber('+15417543010');
                             //   },
                             //   child: Text('Update'),
                             // ),
                             // ElevatedButton(
                             //   onPressed: () {
                             //     formKey.currentState?.save();
                             //   },
                             //   child: Text('Save'),
                             // ),


                       ],
                     ),
                   ),
                    SizedBox(height: 140,),
                    Container(
                      width: 140,
                      height: 40,

                      child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                )
                            ),),
                        onPressed: () {
                          formKey.currentState?.save();
                        },
                        child: Text('Get OTP',),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          formKey.currentState?.save();
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text("Have a Pin?",style: TextStyle( color: Colors.transparent,
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff088F81),
                                shadows: [Shadow( offset: Offset(0, -3))]),
                          )

                        ))
                  ],
                ),
              ),
            ),

          ],
        ),
      )
      ],
      ),
      ),
    );
    }
  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
    await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

}
