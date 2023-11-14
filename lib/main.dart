import 'package:duseca_task/features/book_seat/book_seat_screen.dart';
import 'package:duseca_task/features/driver_info/driver_info_screen.dart';
import 'package:duseca_task/features/ride_history/ride_history_screen.dart';
import 'package:duseca_task/features/signup/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) =>  const SignUpScreen(),
        'rideHistory': (context) => const RideHistoryScreen(),
        'driverInfo': (context) => const DriverInfoScreen(),
        'bookSeat': (context) => const BookSeatScreen(),
      },
    );
  }
}
