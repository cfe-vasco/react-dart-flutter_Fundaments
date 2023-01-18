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

  villanos.add('Duende Verde');

  // print(villanos);

  // var villanosSet = villanos.toSet();
  // print(villanosSet);

// ====== Sets

  Set<String> villanos2 = {'Lex Luthor', 'Red Skull', 'Doom'};

  villanos.add('Duende Verde');

  // print(villanos2);

// ====== Sets (Diccionarios / Objetos literales)

  Map<String, Object> ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y dinero',
    'nivel': 9000,
  };

  // print(ironman['nivel']);

  Map<String, dynamic> capitan = new Map();

  capitan.addAll({
    'nombre': 'Steve',
    'poder': 'Super soldado',
    'nivel': 5000
  });

  //capitan.addAll(ironman);
  
  print(capitan);
}
