import 'dart:math';

class PersonData {
  PersonData(
      {required this.height, required this.weight, required this.isFemale, required this.isMale, required this.age});

  double height;
  bool isMale;
  bool isFemale;
  int weight;
  int age;

  double get calcBmi => weight / pow(height / 100, 2);

  String get resultBmi {
    if (calcBmi < 18.5)
      return 'Underweight';
    else if (calcBmi < 25)
      return 'Normal';
    else if (calcBmi < 30)
      return ('Overweight');
    else
      return ('Obese');
  }

  String getBmiDescription() {
    double bmi = calcBmi;

    if (bmi < 18.5) {
      return "Your weight is below the healthy range. Consider a nutrition plan.";
    } else if (bmi < 25) {
      return "Your weight is within the normal range. Keep up a balanced lifestyle.";
    } else if (bmi < 30) {
      return "You are slightly overweight. Exercise and diet improvements may help.";
    } else if (bmi < 35) {
      return "You are in Obese Class I. Lifestyle changes are recommended.";
    } else if (bmi < 40) {
      return "You are in Obese Class II. Professional medical advice may be needed.";
    } else {
      return "You are in Obese Class III. Urgent medical consultation is highly advised.";
    }
  }
}