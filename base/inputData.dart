/*
  Para poder recibir datos por consola se tiene que 
  importar la libreria dart:io.

  De esta forma dentro del main podemos utilizar
  el metodo stdin.readLineSync() para recibir datos, 
  entre muchos otros mas.
*/
import 'dart:io';

main() {
  stdout.writeln("Ingresa tu nombre");
  String? userName = stdin.readLineSync();
}
