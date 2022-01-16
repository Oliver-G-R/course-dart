/*
  Las funciones flecha se usan para aquella logica que no requiere de una estructura
  compleja.
*/
main() {
  print(searchFriendForName("Olibfgvbver"));
}

List<Map> getAllFriends() {
  return [
    {
      "name": "John",
      "age": "25",
    },
    {
      "name": "Oliver",
      "age": "20",
    }
  ];
}

/*
  Esta funcion retorna una lista de amigos,
  la funcion where comprueba si el nombre del amigo
  coincide con el nombre que se le pasa por parametro, si es asi
  retorna el amigo, si no retorna una lista vacia.
  El metodo tolist() convierte el resultado en una lista.
*/
List<Map> searchFriendForName(String name) =>
    getAllFriends().where((friend) => friend["name"] == name).toList();
