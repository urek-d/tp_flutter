import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = new AudioPlayer();

    Future<void> okPlay(Source source) async {
      // await audioPlayer.setSource(source);
      await audioPlayer.play(source);
    }

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Super Xylophone',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text(
                'Taper pour jouer!',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  okPlay(AssetSource('gun.mp3'));
                },
                child: Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 250, 216, 114),
                    width: double.infinity,
                    height: 100,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/gun.png'),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  okPlay(AssetSource('notification.wav'));
                },
                child: Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 114, 250, 114),
                    width: double.infinity,
                    height: 100,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/notification.png'),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  okPlay(AssetSource('dogg.wav'));
                },
                child: Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 250, 114, 125),
                    width: double.infinity,
                    height: 100,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/happy.png'),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  okPlay(AssetSource('cat.wav'));
                },
                child: Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 227, 114, 250),
                    width: double.infinity,
                    height: 100,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/cool.png'),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  okPlay(AssetSource('sol.mp3'));
                },
                child: Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 114, 152, 250),
                    width: double.infinity,
                    height: 100,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/sol.png'),
                    ),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
