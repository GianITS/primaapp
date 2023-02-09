import 'package:primaapp/primaapp.dart' as primaapp;
import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world: ${primaapp.serieFibonacci()}');
  print('Quanti numeri vuoi stampare?');
  int n = int.parse(stdin.readLineSync()!);
  // primaapp.serieFibonacci(n);
  List<int> miaSerie = primaapp.Fibonacci(n).serieFibonacci();
  for (var element in miaSerie) {
    print(element);
  }
}
