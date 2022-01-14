/*
  La funciones non sirven para reutilizar partes de lògicas que se 
  pueden necesitar mas adelante en cualquier parte del codigo.

  Estas funciones tambien tienen que tener un tipo de retorno,
  puede ser una variable, una funcion, un arreglo, un objeto, etc. Incluso podria no retornar nada, y a este tipo de funciones se les llama de tipo void.
*/
main() {
  welcomeMessage();
}

// Funciones sin parametros y sin retorno
void welcomeMessage() {
  print('Bienvenido a Dart');
}
