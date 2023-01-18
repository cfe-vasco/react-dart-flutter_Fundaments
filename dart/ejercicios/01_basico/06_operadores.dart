main() {
  // Operadores de asignacion
  int a = 10;
  int b = 1;

  // Operadores condicionales
  int c = 23;
  String resp = c > 25 ? 'C es mayor a 25' : 'C es menor a 25';

  // Operadores relacionales
  // Tods retornan un valor booleano
  /*
    > Mayor que
    < Menor que
    >= Mayor o igual que
    <= Menor o igual que
    == Revisa si 2 objetos son iguales
    != Revisa si 2 objetos son diferentes
  */

  String persona1 = 'Christopher';
  String persona2 = 'Julian';

  // print(persona1 == persona2);
  // print(persona1 != persona2);

  int x = 20;
  int y = 30;

  // print(x > y); // false
  // print(x < y); // true
  // print(x >= y); // false
  // print(x <= y); // true

  //Operador de tipo

  int i = 10;
  String j = '10';

  print(i is int);
  print(j is int);
}