import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../svgs/svg_assets.dart';

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
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.red.shade100, // Fill color
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: const Image(image: AssetImage('${Assets.jpgVan}'))
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
