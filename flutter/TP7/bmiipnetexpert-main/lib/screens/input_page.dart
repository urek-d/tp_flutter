import 'package:bmipnetexpert/helpers/calculator_brain.dart';
import 'package:bmipnetexpert/screens/result_page.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/myiconwidget.dart';
import '../constants.dart';
import '../components/rounded_button.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double ma_taille = 180;
  int mon_age = 15;
  double mon_poids = 60;

  bool selected = true;
  imSelected() {
    setState(() {
      if (selected) {
        selected = false;
      } else {
        selected = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ReusableCard(
                largeur: 170.0,
                couleur: selected ? Colors.teal[700] : Colors.teal,
                containerChild: InkWell(
                  onTap: () {
                    imSelected();
                  },
                  child: MyIconWidget(
                    icon: FontAwesomeIcons.mars,
                    gender: 'HOMME',
                  ),
                ),
              ),
              ReusableCard(
                largeur: 170.0,
                couleur: selected ? Colors.teal : Colors.teal[700],
                containerChild: InkWell(
                  onTap: () {
                    imSelected();
                  },
                  child: MyIconWidget(
                    icon: FontAwesomeIcons.venus,
                    gender: 'FEMME',
                  ),
                ),
              ),
            ],
          ),
          ReusableCard(
            largeur: double.infinity,
            couleur: Colors.teal,
            containerChild: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(ma_taille.toString(), style: kMyTextStyle),
                        Text('cm'),
                      ],
                    ),
                  ),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: Color(0xFFEB1555),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0xFF8D8E98),
                    overlayColor: Color(0x29EB1555),
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 25.0),
                  ),
                  child: Slider(
                    value: ma_taille.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        ma_taille = double.parse(newValue.toStringAsFixed(2));
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              ReusableCard(
                largeur: 170.0,
                couleur: Colors.teal,
                containerChild: Column(
                  children: [
                    Text(
                      'Poids',
                      style: kMyTextStyle,
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          mon_poids.toString(),
                          style: kMyTextStyle,
                        ),
                        Text('KG')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundedButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                if (mon_poids != 0) {
                                  mon_poids--;
                                } else {}
                              });
                            }),
                        RoundedButton(
                            icon: FontAwesomeIcons.plus,
                            color: Color(0xFFEB1555),
                            onPress: () {
                              setState(() {
                                mon_poids++;
                              });
                            })
                      ],
                    )
                  ],
                ),
              ),
              ReusableCard(
                largeur: 170.0,
                couleur: Colors.teal,
                containerChild: Column(
                  children: [
                    Text(
                      'Age',
                      style: kMyTextStyle,
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          mon_age.toString(),
                          style: kMyTextStyle,
                        ),
                        Text('ans')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundedButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                if (mon_age != 0) {
                                  mon_age--;
                                } else {}
                              });
                            }),
                        RoundedButton(
                            icon: FontAwesomeIcons.plus,
                            color: Color(0xFFEB1555),
                            onPress: () {
                              setState(() {
                                mon_age++;
                              });
                            })
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
              onTap: () {
                CalculatorBrain cb =
                    new CalculatorBrain(weight: mon_poids, height: ma_taille);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => ResultPage(
                            bmiResult: cb.CalculateBMI(),
                            resultText: cb.getResult(),
                            interpretation: cb.getInterpretation()))));
              },
              child: Center(
                child: Text(
                  'CALCULER BMI',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            height: 80.0,
            width: double.infinity,
            color: Color(0xFFEB1555),
          ),
        ],
      ),
    );
  }
}
