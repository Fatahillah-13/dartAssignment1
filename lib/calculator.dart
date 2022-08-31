import 'dart:convert';
import 'dart:io';
import 'dart:math';

class Calc {
  // instance fiels
  late double num1;
  late double num2;

  // constructor
  Calc(double firstNum, double secondNum) {
    this.num1 = firstNum;
    this.num2 = secondNum;
  }

  //class method
  //class methods
  double add(double firstNum, double secondNum) {
    return firstNum + secondNum;
  }

  double subtract(double firstNum, double secondNum) {
    return firstNum - secondNum;
  }

  double multiply(double firstNum, double secondNum) {
    return firstNum * secondNum;
  }

  double expontentiate(double firstNum, double secondNum) {
    // Math.pow returns a double, so use typecasting to account for large numbers

    double exponentProd = pow(firstNum, secondNum).toDouble();

    return exponentProd;
  }

  double divide(double firstNum, double secondNum) {
    return firstNum / secondNum;
  }

  static void backToMainMenu() {
    print("\nReturning to main menu...\n");
    calcMenu();
  }

  static void calcMenu() {
    // TODO : adding a Delay

    print("""
        \nWelcome
        \n=============================== 
        \nPlease type your first number \nType 'x' to exit at anytime! \n""");

    String firstInput = stdin.readLineSync().toString();
    firstInput = firstInput.trim();
    double firstNum = 0.0;

    if (firstInput == "x") {
      exit(0);
    } else {
      firstNum = double.parse(firstInput);
    }

    print("\nGreat! Now input your second number.\n");

    String secondInput = stdin.readLineSync().toString();
    secondInput = secondInput.trim();
    double secondNum = 0.0;

    if (secondInput == "x") {
      exit(0);
    } else {
      secondNum = double.parse(secondInput);
    }

    Calc calc1 = new Calc(firstNum, secondNum);

    print("""\nAwesome! Now, choose the operation you want.
    \nType + for addition
    \nType - for subtraction
    \nType * for multiplication
    \nType ** to raise the first number to the power of the second
    \nType / to divide""");

    String operator = stdin.readLineSync().toString();
    operator = operator.trim();

    switch (operator) {
      case "+":
        print("The answer is = ${calc1.add(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "-":
        print("The answer is = ${calc1.subtract(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "*":
        print("The answer is = ${calc1.multiply(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "**":
        print("The answer is = ${calc1.expontentiate(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "/":
        print("The answer is = ${calc1.divide(firstNum, secondNum)}");
        backToMainMenu();
        break;
      case "x":
        exit(0);
        break;
      default:
        print("Input not recognized.");
        backToMainMenu();
        break;
    }
  }
}
