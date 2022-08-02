void main() {
  int limite = 10;
  for (int i = 0; i <= limite; i++) {
    int res = mostrarFibonacci(i);
    print(" $res");
  }

  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}

int mostrarFibonacci(int n) {
  if (n == 0)
    return 0;
  else if (n == 1)
    return 1;
  else
    return mostrarFibonacci(n - 1) + mostrarFibonacci(n - 2);
}
