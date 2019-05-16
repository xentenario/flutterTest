enum AnimalKind { dog, cat}

class AnimalModel{

  int age;
  String name;
  AnimalKind kind;
  String photoUrl;

  AnimalModel(num age, String name, AnimalKind kind, String photoUrl){
    this.age = age; 
    this.name = name;
    this.kind = kind;
    this.photoUrl = photoUrl;
  }
}
