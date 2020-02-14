import 'dart:math';
int age = age;

class CalculateBrain{
  CalculateBrain({this.height, this.weight, this.male, this.female});
  final int height;
  final int weight;
  final int male;
  final int female;

  double _bmi;

  // ignore: missing_return
  String getAge(){
    return('age:');
  }

  String getCalculate(){
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getGender(){
    if(male == 1){
      return('Male');
    }else if(female == 2){
      return('Female');
    }else{
      return('Error!');
    }
  }



  String getStatus(){
    if(_bmi >= 25){
      return('Overweight');
    }else if(_bmi >= 18.3){
      return('Normal');
    }else{
      return('Underweight');
    }
  }

  String getMessage(){
    if(_bmi >= 25){
      return('Diet yourself');
    }else if(_bmi >= 18.3){
      return('Your helth is good, keep it up');
    }else{
      return('Take food daily 5 time at least');
    }
  }
}