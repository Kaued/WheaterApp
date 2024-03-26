import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather/service.dart';

import 'component/forecast.dart';
import 'component/wheather_infomartion.dart';

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
        body: Expanded(
          child: FutureBuilder<Map<String, dynamic>>(
              future: getWeather(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  );
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      snapshot.data!['name'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
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
                        Text(
                          snapshot.data!['data']['condition'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 36),
                        ),
                        Text(
                          "${snapshot.data!['data']['temperature']}º",
                          style: const TextStyle(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WheatherInfomartion(
                          imageAsset: 'images/umidade.png',
                          title: "Humidade",
                          value: "${snapshot.data!['data']['humidity']}%",
                        ),
                        WheatherInfomartion(
                          imageAsset: 'images/vento.png',
                          title: "Vento",
                          value:
                              "${snapshot.data!['data']['wind_velocity']}km/h",
                        ),
                        WheatherInfomartion(
                          imageAsset: 'images/sensacao.png',
                          title: "Sensação",
                          value: "${snapshot.data!['data']['sensation']}°",
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
                );
              }),
        ),
      ),
    );
  }
}
