import 'dart:io';
import 'package:binary/binary.dart';

void main() {
  _calculation();
}

_calculation(){
  stdout.write("Digite o simbolo correspondente a operação que deseja realizar: ");
  var op = stdin.readLineSync();

  stdout.write("Digite o primeiro valor: ");
  var number1 = stdin.readLineSync().parseBits();

  stdout.write("Digite o Segundo valor: ");
  var number2 = stdin.readLineSync().parseBits();

  var result = 0;

  if (op == "+") {
    result = number1 + number2;
  } else if (op == "-") {
    result = number1 - number2;
  } else if (op == "*") {
    result = number1 * number2;
  } else if (op == "/") {
    result = (number1 / number2).toInt();
  } else if (op == "%") {
    result = number1 % number2;
  } else {
    print("Você digitou um valor inválido");
    result = null;
  }

  if (result == null) {
    print("Tente novamente!!");
  } else {
    print("\nResultado: ${result.toBinaryPadded(8)}");
  }
}