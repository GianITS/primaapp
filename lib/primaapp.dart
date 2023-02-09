class Fibonacci {
  int calc;
  Fibonacci({required this.calc});

  List<int> serieFibonacci() {
    List<int> serie = [];
    if (calc > 0) {
      int c = 1;
      int prec = 0;
      for (int i = 0; i < calc; i++) {
        var res = c + prec;
        serie.add(res);
        prec = c;
        c = res;
      }
    } else {}
    return serie;
  }
}
