import 'package:duseca_task/features/driver_info/driver_info_screen.dart';
import 'package:duseca_task/features/widgets/ride_history_card.dart';
import 'package:flutter/material.dart';

class RideHistoryScreen extends StatelessWidget {
  const RideHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Ride History',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: InkWell(
            child: Container(
              width: 30,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white, // Fill color
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.red,
              ),
            ),
            onTap: (){
              Navigator.pop(context);
            },
          )),
      body: ListView.builder(
          itemCount: 3, itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DriverInfoScreen()));
                  },
                  child: RideHistoryCard())
            );
      }),
    );
  }
}
