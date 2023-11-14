import 'package:duseca_task/ride_history/ride_history_screen.dart';
import 'package:duseca_task/svgs/svg_assets.dart';
import 'package:duseca_task/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookSeatScreen extends StatefulWidget {
  const BookSeatScreen({super.key});

  @override
  State<BookSeatScreen> createState() => _BookSeatScreenState();
}

class _BookSeatScreenState extends State<BookSeatScreen> {
  myCallback() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const RideHistoryScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          title: const Text('Book Seat'),
          centerTitle: true,
          automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.red.shade50,
              padding: const EdgeInsets.all(8.0),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 40,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green, // Fill color
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                  ),
                  const Text('Available', style: TextStyle(fontSize: 18),),
                  Container(
                    width: 40,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey, // Fill color
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                  ),
                  const Text('Unavailable'),
                  Container(
                    width: 40,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red, // Fill color
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                  ),
                  const Text('Selected'),
                ],
              ),
            ),
            SvgPicture.asset(
                Assets.svgCar
            ),
            SizedBox(
                height: 50,
                width: 300,
                child: TextButtonWidget(
                  buttonText: 'Select Seat',
                  callback: myCallback
                ))
          ],
        ),
      ),
    ));
  }
}
