import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forecast extends StatelessWidget {
  final String day;
  final double temperature;
  final String imageAsset;

  const Forecast({
    super.key,
    required this.day,
    required this.temperature,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 39),
      height: double.minPositive,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            day,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          Image.asset(
            imageAsset,
            width: 36,
            height: 36,
          ),
          Text(
            "${temperature.toString()}°",
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
