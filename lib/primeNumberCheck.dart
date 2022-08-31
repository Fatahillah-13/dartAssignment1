import 'dart:io';

bool primenumb(number) {
  for (var i = 2; i < number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void runPrimeNNumber() {
  print("Input the number :");
  var n = int.parse(stdin.readLineSync()!);
  if (primenumb(n)) {
    print("$n is a prime number");
  } else {
    print("$n isn't a prime number");
  }
}
