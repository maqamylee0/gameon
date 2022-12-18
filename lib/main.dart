import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:gameon/otp/views/pages/otp1.dart';
import 'package:google_fonts/google_fonts.dart';

import 'booking/views/pages/booking.dart';
import 'booking/views/pages/booking_details.dart';
import 'otp/views/pages/otp2.dart';
import 'otp/views/pages/otp3.dart';

void main() {
  runApp(
    DevicePreview(builder: (BuildContext context)=> MyApp())
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xff088F81),
          secondary: const Color(0xff088F81)
          // secondary: const Color(0xFFFFC107),


        ),
      ),
      home: SafeArea(child: const GroundDetails()),
      routes: {
        'otp1': (context) => const Otp1(),
        'booking': (context) => const Booking(),
        'ground details': (context) => const GroundDetails()
      },
    );
  }
}
