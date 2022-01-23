import 'dart:io';

main() {
  /*
    Se crea una variable de tipo file para almacenar 
    un archivo local, pasando la ruta donde se encuentra dicho archivo.
  */
  File emailTxt =
      new File(Directory.current.path + '\\base\\Tipos especiales\\emails.txt');

  /*
    Se crea un future que va procesar el archivo para que sea leído
    en como una cadena de texto.
  */
  Future<String> f = emailTxt.readAsString();

  // then resulve el future imprimiendo los datos que contiene el archivo de texto
  f.then((emails) => print(emails));
}
