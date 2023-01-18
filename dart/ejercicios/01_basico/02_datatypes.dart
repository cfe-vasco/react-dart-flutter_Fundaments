// ====== Números
void main() {
  int a = 10;
  double b = 5.5;
  int? c;

  // print(c);

// ====== Strings

  String name = 'Tony';
  String lastName = 'Stark';
  String name3 = "O'Connor";
  String completeName = '$name $lastName';

  String multiLinea = '''
  Hola mundo. 
  $completeName
  Como estas?''';

  // print(multiLinea);

// ====== Booleanos

  bool isActive = true;
  bool isNotActive = !isActive;

  // print(isNotActive);

// ====== Lists

  List<String> villanos = ['Lex Luthor', 'Red Skull', 'Doom'];

  villanos[0] = 'SuperMan';

  print(villanos);
}
