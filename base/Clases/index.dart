import 'Persona.dart'; // importamos la clase persona

main() {
  //Forma de inicializar una clase
  final user = new User(
    'Juan',
    'juans8@gmail.com',
    '12345678',
  );

  print(User.alertMessage(
      "esto es una alerta")); // llamamos a la funcion de la clase persona sin instanciarla

  // Acceso a los atributos de la clase y llenado de los mismos
  /* user.name = 'John';
  user.email = 'juan82@gmail.com';
  user.password = '123456'; */

  /*
    Otra forma 
      user
    ..name = 'John'
    ..email = 'juan82@gmail.com'
    ..password = '123456';
  */

  print(user.welcomeMessage());

  // acceso a un getter
  print(user.tasks);

  // acceso a un setter estableciendo un valor
  user.addTask = 'Comprar huevo';

  print(user.tasks);
}
