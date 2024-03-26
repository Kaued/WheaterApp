import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WheatherInfomartion extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String value;

  const WheatherInfomartion({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageAsset),
        FittedBox(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        FittedBox(
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
