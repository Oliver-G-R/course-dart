/*
  enum sirve para facilitar la lecturra del codigo,
  para saber que valores tendra cierta variable.
*/

main() {
  /*
    Para usar enum lo primero que se debe hacer es inicializarlo, 
    instanciandolo en este caso,  se inicializa el enum con el nombre 
    de la variable mas su valor. 
  */
  AlertColors alert = AlertColors.Danger;

  switch (alert) {
    case AlertColors.Danger:
      print('Danger');
      break;
    case AlertColors.Warning:
      print('Warning');
      break;
    case AlertColors.Success:
      print('Success');
      break;
    default:
      print('Default');
  }
}

enum AlertColors { Danger, Warning, Success, Info }
