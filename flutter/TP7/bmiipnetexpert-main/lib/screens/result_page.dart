import 'package:bmipnetexpert/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VOTRE RESULTAT'),
      ),
      body: Column(
        children: [
          ReusableCard(
            largeur: double.infinity,
            couleur: const Color(0XFF4C4F5E),
            containerChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  resultText.toUpperCase(),
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  bmiResult,
                  style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    interpretation,
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Center(
                child: Text(
                  ' RECALCULER ',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            height: 80.0,
            width: double.infinity,
            color: const Color(0xFFEB1555),
          ),
        ],
      ),
    );
  }
}
