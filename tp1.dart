class Character {
  String name;
  String species;
  String homePlanet;
  String affiliation;
  int health;

  Character(
    this.name,
    this.species,
    this.homePlanet,
    this.affiliation,
    this.health,
  );

  String toString() {
    return 'Character(name: $name, species: $species, homePlanet: $homePlanet, affiliation: $affiliation, health: $health)';
  }
}

class Jedi extends Character {
  final bool hasMasteryOfForce;

  Jedi(
    String name,
    String species,
    String homePlanet,
    String affiliation,
    int health, {
    required this.hasMasteryOfForce,
  }) : super(name, species, homePlanet, affiliation, health);

  void usingLightLaser() {
    print("$name utilise san sabre laser!");
  }

  String toString() {
    return 'Jedi(name: $name, species: $species, homePlanet: $homePlanet, affiliation: $affiliation, health: $health, hasMasteryOfForce: $hasMasteryOfForce)';
  }
}

class Ewok extends Character {
  Ewok(
    String name,
    String species,
    String homePlanet,
    String affiliation,
    int health,
  ) : super(name, species, homePlanet, affiliation, health);

  String toString() {
    return 'Ewok(name: $name, species: $species, homePlanet: $homePlanet, affiliation: $affiliation, health: $health)';
  }
}

void main() {
  var jedi = Jedi(
    'Luke Skywalker',
    'Human',
    'Tatooine',
    'Rebel Alliance/Jedi Order',
    100,
    hasMasteryOfForce: true,
  );
  var ewok = Ewok(
    'Wicket W. Warrick',
    'Ewok',
    'Endor',
    'Bright Tree Village/Rebel Alliance',
    50,
  );
  var charact = Character(
    'Han Solo',
    'Human',
    'Corellia',
    'Smuggler/Rebel Alliance',
    80,
  );

  print(jedi);
  print(ewok);
  print(charact);
  jedi.usingLightLaser();
}

