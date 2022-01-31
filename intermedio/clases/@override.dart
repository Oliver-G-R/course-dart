class WelcomeMessageBegginer {
  String name = "";

  WelcomeMessageBegginer(this.name);

  void welcomeMessage() {
    print("Welcome to Dart, $name");
  }
}

/*
  @override nos permite sobreescribir un metodo de una clase padre,
  actualmente no es obligatorio pero es recomendable usar 
  para indicar que un metodo debe ser sobreescrito.
*/

class WelcomeMessageExperienced extends WelcomeMessageBegginer {
  WelcomeMessageExperienced(String name) : super(name);

  @override
  void welcomeMessage() {
    print("Welcome $name");
  }
}

main() {
  WelcomeMessageBegginer welcomeMessageBegginer =
      new WelcomeMessageBegginer("John");
  welcomeMessageBegginer.welcomeMessage();
  WelcomeMessageExperienced welcomeMessageExperienced =
      new WelcomeMessageExperienced("Oliver");
  welcomeMessageExperienced.welcomeMessage();
}
