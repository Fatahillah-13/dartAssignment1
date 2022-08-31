import 'dart:io';
import 'calculator.dart';
import 'primeNumberCheck.dart';
import 'pyramid.dart';

void main(List<String> args) {
  print("""
        \nWelcome
        \n=============================== 
        \nSelect the program you want. 
        \n[1]. Calculator.
        \n[2]. Prime Number Check.
        \n[3]. Pyramid.
        \nType 'exit' to exit at anytime! \n""");

  var selected = int.parse(stdin.readLineSync()!);

  switch (selected) {
    case 1:
      Calc.calcMenu();
      break;
    case 2:
      runPrimeNNumber();
      break;
    case 3:
      pyramid();
      break;
    default:
  }
}
