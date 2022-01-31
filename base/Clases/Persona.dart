/*
  Las clases son una representación de una entidad en un modelo de datos. 

  Estos tienen propiedades y métodos que puedes ser accedidos desde fuera de la clase, estos pueden ser publicos o privados.
*/

class User {
  // propiedades
  String name = '';
  String email = '';
  String password = '';
  String authCode = '';

  String _token = ''; // _ indica que es una propiedad privada

  List<String> _task = [
    'Comprar leche',
    'Comprar pan',
  ];

  // constructor
  /*
    El constructor es el primer método que se ejecuta cuando se crea una instancia de la clase.
    En este caso, se inicializan las propiedades de la clase.
  */
  /* User(String name, String email, String password) {
    this.name = name;
    this.email = email;
    this.password = password;
  } */

  // segunda forma de inicializar las propiedades
  User(this.name, this.email, this.password);

  // Se le da un nombre distinto al constructor
  User.UserAdmin(this.name, this.email, this.password, this.authCode);

  // métodos
  String welcomeMessage() => 'Welcome $name';

  String token(String auth) => auth == this.authCode ? _token : '';

  // getter
  /*
    Los getter son una forma de acceder a una propiedad ejecutando 
    ciertas acciones antes de retornar el valor de la propiedad.
  */
  List<String> get tasks => _task;

  // setter
  /*
    Los setter son una forma de modificar una propiedad ejecutando 
    ciertas acciones antes de asignar el valor de la propiedad.

    La diferrencia entre setter y getter es que el setter no retorna nada.
  */

  void set addTask(String task) => this._task.add(task);

  /*
    Las propiedades y metodos estaticos pueden ser usados sin instanciar la clase.
   */
  static String alertMessage(String name) => name;
}
