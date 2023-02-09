import 'package:primaapp/primaapp.dart' as primaapp;
import 'dart:io';

void main(List<String> arguments) {
  print('Quanti numeri vuoi stampare?');
  int n = int.parse(stdin.readLineSync()!);
  List<int> miaSerie = primaapp.Fibonacci(calc: n).serieFibonacci();
  for (var i = 0; i < miaSerie.length; i++) {
    stdout.write(miaSerie[i]);
    if (i != miaSerie.length - 1) {
      stdout.write(' - ');
    }
  }
}
