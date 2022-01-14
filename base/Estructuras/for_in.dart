/*
  For-in nos ayuda a recorrer listas de una manera mas sencilla,
  pasando una variable que se va leer y un listado de elementos 
  que se van a recorrer.
*/
import 'dart:io';

main() {
  List<String> movies = [
    'The Shawshank Redemption',
    'The Godfather',
    'The Godfather: Part II',
    'The Dark Knight',
    '12 Angry'
  ];

  /*  for (String movie in movies) {
    print(movie);
  } */

  /*
    Creamos un listado de maps que contiene peliculas con su año de estreno,
    nombrado y un estado de verificacion de verdadero o falso, el cual nos
    ayudara a ver si la pelicula ya fue vista o no.

    Mostramos dichas peliculas en pantalla la primera vez que se ejecute el
    programa, y seguido de esto preguntamos que pelicula se quiere ver, si
    existe en el listado se muestra la pelicula con un mensaje 
    y se cambia el estado de watched a true.
    Al terminal se muestran las peliculas que no han sido vistas.
  */

  List<Map<String, dynamic>> moviesUser = [
    {'title': 'The Shawshank Redemption', 'year': 1994, 'watched': false},
    {'title': 'The Godfather', 'year': 1972, 'watched': true},
    {'title': 'The Godfather: Part II', 'year': 1974, 'watched': false},
    {'title': 'The Dark Knight', 'year': 2008, 'watched': true},
  ];

  for (Map<String, dynamic> movie in moviesUser) {
    print({movie['title'], movie['year']});
  }

  // escoger que peliculas se quiere ver
  String choice = "";

  print("que pelicula quieres ver?");
  choice = stdin.readLineSync() ?? "";

  for (Map<String, dynamic> movie in moviesUser) {
    if (movie['title'] == choice) {
      print('Estas viendo ${movie['title']}');
      movie['watched'] = true;
    }
  }

  // ver peliculas que no han sido vistas

  print("Peliculas que no has visto");
  for (Map<String, dynamic> movie in moviesUser) {
    if (!movie['watched']) {
      print({movie['title'], movie['year']});
    }
  }
}
