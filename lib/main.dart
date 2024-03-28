import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
    int getBackgroundColor(String condition, DateTime date) {
      int color;
      bool validateHour = date.hour > 6 && date.hour < 18;
      switch (condition.toLowerCase()) {
        case "chuva":
          color = validateHour ? 0xFF575F7C : 0xFF343538;
          break;

        case "céu aberto":
        default:
          color = validateHour ? 0xFF255AF4 : 0xFF061034;
          break;
      }

      return color;
    }

    String getWeatherImage(String index) {
      String image;

      switch (index) {
        case "1":
        case "1n":
          image = "sol";
          break;

        case "2":
        case "2n":
        case "4":
        case "4n":
          image = "parcialmente_nublado";
          break;

        case "2r":
        case "2rn":
        case "3":
        case "3n":
        case "7":
        case "7n":
        case "8":
        case "9":
          image = "nublado";
          break;

        case "4r":
        case "4rn":
        case "4t":
        case "4tn":
        case "5":
        case "5n":
        case "6":
        case "6n":
          image = "chuva";
          break;

        default:
          image = "nublado";
      }

      return "images/$image.png";
    }

    return MaterialApp(
      home: FutureBuilder<Map<String, dynamic>>(
          future: getWeather(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Scaffold(
                backgroundColor: Color(0xFF255AF4),
                body: Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              );
            }

            return Scaffold(
              backgroundColor: Color(getBackgroundColor(
                snapshot.data!["data"]["condition"],
                DateTime.parse(
                  snapshot.data!["data"]["date"],
                ),
              )),
              body: Expanded(
                child: Column(
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
                          getWeatherImage(snapshot.data!["data"]["icon"]),
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
                ),
              ),
            );
          }),
    );
  }
}
