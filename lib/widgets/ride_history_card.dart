import 'package:duseca_task/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RideHistoryCard extends StatelessWidget {
  const RideHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: 50,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.red.shade100, // Fill color
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
            ),
            const Positioned(
              top: 90,
              child: Image(image: AssetImage(Assets.jpgVan)),),
            Positioned(
              top: 10,
              left: 60,
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.svgDot
                  ),
                  const SizedBox(width: 20,),
                  const Text('Gorzow', style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
            Positioned(
              top: 30,
              left: 62,
              child: SvgPicture.asset(
                  Assets.svgLine,
                height: 35,
              ),
            ),
            Positioned(
              top: 60,
              left: 60,
              child: Row(
                children: [
                  SvgPicture.asset(
                      Assets.svgTriangle
                  ),
                  const SizedBox(width: 20,),
                  const Text('Berlin Airport', style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
            const Positioned(
              top: 40,
              right: 30,
              child: Row(
                children: [
                  Text('\$ 45.99', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ],
              )
            ),
            const Positioned(
                top: 60,
                right: 30,
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.red, size: 15,),
                    Text('Germany')
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
