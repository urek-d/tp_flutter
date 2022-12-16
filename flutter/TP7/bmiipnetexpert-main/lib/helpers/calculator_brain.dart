import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});

  final double weight;
  final double height;

  // ignore: prefer_final_fields
  late double _bmi = weight / pow(height / 100, 2);

  String CalculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi <= 18.5) {
      return 'Insuffisance pondérale (maigreur)';
    } else if (_bmi > 18.5 && _bmi <= 25) {
      return 'Corpulence normale';
    } else if (_bmi > 25 && _bmi <= 30) {
      return 'Surpoids';
    } else if (_bmi > 30 && _bmi <= 35) {
      return 'Obésité modérée';
    } else if (_bmi > 35 && _bmi <= 40) {
      return 'Obésité sévère';
    } else {
      return 'Obésité morbide ou massive';
    }
  }

  String getInterpretation() {
    if (_bmi <= 18.5) {
      return "Votre poids apparaît trop faible par rapport à votre taille. Ce faible indice de masse corporel (IMC) est peut-être la conséquence d'une pathologie, mais elle-même peut exposer à un certain nombre de risques pour votre santé (carences, anémie, ostéoporose...). Parlez-en avec votre médecin traitant. Il pourra rechercher la cause de cette maigreur et vous conseiller.";
    } else if (_bmi > 18.5 && _bmi <= 25) {
      return "Votre poids est adapté à votre taille. Gardez vos habitudes alimentaires pour conserver un indice de masse corporel (IMC) idéal et un poids qui vous assure un état de santé optimal. Une alimentation équilibrée, sans excès de matières grasses, associée à une activité physique régulière vous aideront à maintenir votre poids idéal.";
    } else if (_bmi > 25 && _bmi <= 30) {
      return "Votre poids commence à devenir trop élevé par rapport à votre taille. A long terme, un indice de masse corporel (IMC) élevé a des conséquences sur la santé. L'excès de poids entraîne un risque accru de maladies métaboliques (diabète), cardiaques, respiratoires, articulaires et de cancer. Si vous souhaitez commencer un régime pour perdre du poids, parlez-en au préalable avec votre médecin traitant. Au-dessus de 30, l'indice de masse corporelle peut indiquer une obésité.";
    } else if (_bmi > 30 && _bmi <= 35) {
      return "Votre poids est trop élevé par rapport à votre taille. Du point de vue médical, l'obésité est un excès de masse grasse ayant des conséquences sur la santé. L'excès de poids entraîne un risque accru de maladies métaboliques (diabète), cardiaques, respiratoires, articulaires et de cancer. Si vous souhaitez commencer un régime pour perdre du poids, parlez-en au préalable avec votre médecin traitant. A noter que la sévérité de l'obésité dépend de l'indice de masse corporelle (IMC) :";
    } else if (_bmi > 35 && _bmi <= 40) {
      return "L'obésité abdominale est le signe d'une accumulation de masse grasse viscérale. Cette masse grasse profonde se loge autour des organes comme le cœur, le foie ou encore le pancréas et nuit à leur bon fonctionnement. Ainsi, elle est souvent associée à un risque élevé d'accidents cardio-vasculaires et de maladies métaboliques telles que la stéatose hépatique (\"foie gras\" )ou encore le diabète.";
    } else {
      return "En cas d'obésité morbide, l'excès de masse grasse peut être réparti au niveau de plusieurs zones du corps : le visage, le cou, les bras, le ventre, les cuisses, les fesses, etc. Cet excès de poids peut avoir un fort retentissement sur le quotidien des patients, qui peinent à se déplacer, peuvent présenter des problèmes de santé et développer une faible estime d'eux-mêmes, pouvant conduire à la dépression. ";
    }
  }
}
