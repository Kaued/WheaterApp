import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const WheatherApp());
}

class WheatherApp extends StatelessWidget {
  const WheatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF255AF4),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "São José do Rio Preto",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Column(
              children: [
                Image.asset(
                  'images/sol.png',
                  height: 96,
                  width: 96,
                ),
                const Text(
                  "Ensolarado",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 36),
                ),
                const Text(
                  "33º",
                  style: TextStyle(
                    fontSize: 64,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    shadows: [
                      Shadow(
                        color: Colors.black26,
                        offset: Offset(4, 4),
                        blurRadius: 0.25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WheatherInfomartion(
                  imageAsset: 'images/umidade.png',
                  title: "Humidade",
                  value: "18%",
                ),
                WheatherInfomartion(
                  imageAsset: 'images/vento.png',
                  title: "Vento",
                  value: "15km/h",
                ),
                WheatherInfomartion(
                  imageAsset: 'images/sensacao.png',
                  title: "Sensação",
                  value: "24°",
                ),
              ],
            ),
            SizedBox(
              height: 105,
              width: double.infinity,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Forecast(
                      day: "Now",
                      temperature: 18,
                      imageAsset: "images/nublado.png",
                    ),
                    Forecast(
                      day: "10 AM",
                      temperature: 19,
                      imageAsset: "images/vento.png",
                    ),
                    Forecast(
                      day: "11 AM",
                      temperature: 22,
                      imageAsset: "images/parcialmente_nublado.png",
                    ),
                    Forecast(
                      day: "12 AM",
                      temperature: 23,
                      imageAsset: "images/nublado.png",
                    ),
                    Forecast(
                      day: "17 PM",
                      temperature: 24,
                      imageAsset: "images/chuva.png",
                    ),
                    Forecast(
                      day: "Now",
                      temperature: 18,
                      imageAsset: "images/nublado.png",
                    ),
                    Forecast(
                      day: "10 AM",
                      temperature: 19,
                      imageAsset: "images/vento.png",
                    ),
                    Forecast(
                      day: "11 AM",
                      temperature: 22,
                      imageAsset: "images/parcialmente_nublado.png",
                    ),
                    Forecast(
                      day: "12 AM",
                      temperature: 23,
                      imageAsset: "images/nublado.png",
                    ),
                    Forecast(
                      day: "17 PM",
                      temperature: 24,
                      imageAsset: "images/chuva.png",
                    ),
                    Forecast(
                      day: "Now",
                      temperature: 18,
                      imageAsset: "images/nublado.png",
                    ),
                    Forecast(
                      day: "10 AM",
                      temperature: 19,
                      imageAsset: "images/vento.png",
                    ),
                    Forecast(
                      day: "11 AM",
                      temperature: 22,
                      imageAsset: "images/parcialmente_nublado.png",
                    ),
                    Forecast(
                      day: "12 AM",
                      temperature: 23,
                      imageAsset: "images/nublado.png",
                    ),
                    Forecast(
                      day: "17 PM",
                      temperature: 24,
                      imageAsset: "images/chuva.png",
                    ),
                    Forecast(
                      day: "Now",
                      temperature: 18,
                      imageAsset: "images/nublado.png",
                    ),
                    Forecast(
                      day: "10 AM",
                      temperature: 19,
                      imageAsset: "images/vento.png",
                    ),
                    Forecast(
                      day: "11 AM",
                      temperature: 22,
                      imageAsset: "images/parcialmente_nublado.png",
                    ),
                    Forecast(
                      day: "12 AM",
                      temperature: 23,
                      imageAsset: "images/nublado.png",
                    ),
                    Forecast(
                      day: "17 PM",
                      temperature: 24,
                      imageAsset: "images/chuva.png",
                    ),
                    Forecast(
                      day: "Now",
                      temperature: 18,
                      imageAsset: "images/nublado.png",
                    ),
                    Forecast(
                      day: "10 AM",
                      temperature: 19,
                      imageAsset: "images/vento.png",
                    ),
                    Forecast(
                      day: "11 AM",
                      temperature: 22,
                      imageAsset: "images/parcialmente_nublado.png",
                    ),
                    Forecast(
                      day: "12 AM",
                      temperature: 23,
                      imageAsset: "images/nublado.png",
                    ),
                    Forecast(
                      day: "17 PM",
                      temperature: 24,
                      imageAsset: "images/chuva.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
