import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  // Variable pour stocker les données météorologiques
  Map weatherData;

  @override
  void initState() {
    super.initState();

    // Chargement initial des données météorologiques
    _loadWeatherData();

    // Mise à jour des données météorologiques toutes les 30 minutes
    Timer.periodic(Duration(minutes: 30), (timer) {
      _loadWeatherData();
    });
  }

  // Méthode pour charger les données météorologiques à partir de l'API
  _loadWeatherData() async {
    // Envoi de la requête HTTP vers l'API de donné
  final response = await http.get(
    'https://api.openweathermap.org/data/2.5/weather?q=Paris&units=metric&appid=YOUR_API_KEY',
  );

  // Parsing de la réponse JSON
  final weatherJson = jsonDecode(response.body);
  final weather = weatherJson['main'];

  // Mise à jour de l'état de la page avec les nouvelles données météorologiques
  setState(() {
    weatherData = weather;
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Weather App'),
    ),
    body: Center(
      child: weatherData == null
          ? CircularProgressIndicator()
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${weatherData['temp']}°C',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.network(
                  'https://openweathermap.org/img/wn/${weatherData['icon']}@2x.png',
                  width: 64,
                  height: 64,
                ),
              ],
            ),
    ),
  );
}
