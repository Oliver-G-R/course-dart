main() {
  //#Varible definida sin un tipo de dato
  /*
    Al no definir un tipo de dato es posible asignarle la primera vez 
    el que sea, de esta forma dart define el tipo de forma automatica.

    Sin embargo esto no es una buena práctica ya que no se le esta 
    dando información importante a la variable que estamos definiendo
    e iniciando. 
  */
  var notDefinedDataType = 8;

  //#Constantes
  /*
    Las constantes no pueden cambiar su valor.
  */
  const double pi = 3.1416;

  //#Enteros y decimales
  double score = 10.23; //  decimal
  int age = 19; // entero

  //Forma de hacer definiciones de tipos multiples
  double width = 17.3, long = 12.2;

  //#Strings
  /*
    Ambas formas de poner las comillas ya sea sencilla o doble
    va depender de el contenido que se quiera agregar dentro 
    de las mismas.

    Este tipo de dato incluye la forma de poder crear un "template",
    también llamado, string multilinea; de tal modo que los espacios 
    y contenido que tenga dentro se podra mostrar en pantalla tal cual 
    lo llenemos.

    Algo relevante a destacar es que se pueden incluir variables dentro
    de estos strings, agregando dentro de estos mismos los simbolos ${} o $.
  */

  String userName = "oliver83_hjs"; // con comillas dobles
  String name = 'oliver'; // con comillas simples

  String template = '''
    Hello ${userName},
    Your score is ${score}
  '''; // string multilinea

  //#Booleans
  /*
    Este tipo de datos solo puede ser verdadero o falso, normalmente se 
    usa para poder saber el estado de algun proceso.
  */
  bool userActiv = false;
  bool tokenExpired = true;

  //#Listas o arrays
  /*
    Las listas se usan para almacenar multiples datos que se puedan
    operar en memoria, estas listas pueden ser de cualquier tipo de dato
    ya mencionado, e incluso pueden ser de uno solo.
  */

  List<String> followersNames = ['dany_062', 'oliver13_23', 'luis223_3s'];

  List<int> lastScores = [344, 900, 100];

  List<String> tasks =
      []; // Se declara una lista vacia para su posterior llenado de forma dinamica

  tasks.add("this a task 1"); // add agrega elementos a la lista
  tasks.add("this a task 2");

  tasks.addAll([
    "learning with my friend at 9:00",
    "add new task"
  ]); // allAll añade multiples elementos

  // Lista que contiene un limite de espacios, en este caso 3
  List<int> limitedList = List.filled(3, 0);

  limitedList[0] = 1;
  limitedList[1] = 2;
  limitedList[2] = 3;

  //#Sets
  /*
    Los sets son similares a las listas, comparten algunas de sus caracteristicas,
    pero no son ordenadas, no pueden contener elementos repetidos y no pueden
    ser modificados.
  */
  Set<String> passwords = {'oliver', 'oliver13', 'oliver123'};

  passwords.add(
      'oliver123'); // No se puede agregar un elemento repetido, dart lo va a ignorar
  //passwords[0] = 'oliver'; No se puede modificar un elemento de un set ya que no tiene un orden para poder acceder a el

  //#Maps

  /*
    Los maps tambien conocidos como diccionarios o objetos son un tipo de dato
    que tiene una clave y un valor. Los cuales pueden tener cualquier tipo de dato
    incluso mixto.

    REPRESENTACION DE UN MAP

    {
      'key': 'value',
      'key2': 'value2',
      'key3': 'value3'
    }
  */

  Map<String, String> userData = {
    'name': 'oliver',
    'lastName': 'hjs',
    'age': '19'
  }; // El primer tipo es la clave y el segundo el valor

  Map<dynamic, dynamic> userData2 = {
    1: 'oliver',
    'lastName': 'hjs',
    'age': '19'
  }; // de esta forma tanto la clave como el valor pueden ser de cualquier tipo de dato gracias a dynamic

  // Se declara un mapa vacio para su posterior llenado de forma dinamica
  Map<String, dynamic> follower = {};
  Map<String, dynamic> follower2 =
      new Map(); // segunda forma de declarar un mapa vacio

  follower.addAll({'name': 'oliver', 'lastName': 'hjs', 'age': 12});

  print(follower);
}
