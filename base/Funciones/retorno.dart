/*
  Las funciones pueden tener parámetros, estos parámetros son variables que se le pasan a la funcion, las culaes deben coincidir con el tipo de dato que se espera que se le pase.
*/
main() {
  // Mandamos el parametro a la funcion, con su tipo de dato que se espera que se le pase.

  /* print(welcomeMessageWithName('Juan'));

  for (String names in getListOfNames()) {
    print(names);
  } */

  /* print(getPublicPost(2, true)); */
  /*  List<String> emails = [
    "Joelle_Lemke@gmail.com",
    "Kurtis6@yahoo.com",
    "Giles_Quitzon28@gmail.com",
    "Kennith85@hotmail.com",
    "Loren.Romaguera82@yahoo.com",
    "Maybelle_Little@yahoo.com",
    "Sabina.Miller@yahoo.com",
    "Emmie.Aufderhar99@hotmail.com"
  ];

  List<String> emailsFilter = filterEmailForDomain(emails, "yahoo");

  for (String email in emailsFilter) {
    print(email);
  } */

  // Se le pasa el nombre del parametro y valor para que devuelva lo que retorna la funcion.
  print(getSuperHeroPower(name: "Batman"));
}

// Funcion con parametro de tipo String y con retorno de tipo String
String welcomeMessageWithName(String name) {
  return 'Bienvenido $name';
}

/*
  Estas funciones pueden tener la cantidad de parámetros que se desee, incluso pueden no tener ninguno o ser opcionales. 
*/
// Funciones con parámetros opcionales
Map getPublicPost(int id, [bool showAuthor = false]) {
  List<Map> publicPost = [
    {'id': 1, 'title': 'Post 1', 'author': 'Luis'},
    {'id': 2, 'title': 'Post 2', 'author': 'Pedro'},
    {'id': 3, 'title': 'Post 3', 'author': 'Maria'},
  ];

  if (showAuthor) {
    return publicPost[id];
  } else {
    return {'id': publicPost[id]['id'], 'title': publicPost[id]['title']};
  }
}

/*
  Retorna la lista filtrados por el dominio que 
  se le pasa como parámetro junto con la lista de correos.
*/

List<String> filterEmailForDomain(List<String> emails, String domain) {
  List<String> emailsFilter = [];

  for (String email in emails)
    //La funcion add agrega los elementos a la lista
    if (email.contains(domain)) emailsFilter.add(email);

  return emailsFilter;
}

// Funcion con que retorna una lista de tipo String
List<String> getListOfNames() {
  return ['Luis', 'Pedro', 'Maria'];
}

String getSuperHeroPower({String name = ""}) {
  List<Map> heroPower = [
    {'name': 'Superman', 'power': 'Volar'},
    {'name': 'Batman', 'power': 'Dinero'},
    {'name': 'Flash', 'power': 'Velocidad'},
  ];

  for (Map hero in heroPower) if (hero['name'] == name) return hero['power'];

  return 'No se encontro el poder';
}
