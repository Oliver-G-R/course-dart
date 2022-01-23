/*
  Un Future se basa en una promesa, es decir, una promesa que se resuelve o se rechaza,
  segun sea el caso.

  Se usa normalmente para hacer peticiones a un servicio externo, por ejemplo,
  una peticion a una API la cual tiene un tiempo de respuesta. 
*/
main() {
  /*
    Define un future que se resuelve en  3 segundos, pasando al final una
    funcion anonima que retorna un string, esta se ejecuta cuando se resuelve
    el future
  */
  Future<String> time = new Future.delayed(new Duration(seconds: 3), () {
    return "3 segundos despues";
  });

  // Se then para ver la salida del Future
  time.then((value) => print(value));
}
