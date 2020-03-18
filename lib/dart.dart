class Person {
  String name;
  int age;

  Person({String inputName, int age}) {
    name = inputName;
    this.age = age;
  }

  Person.veryOld(this.name){
    age = 60;
  }
  //  Person({this.name, this.age = 30});
}

double addNumbers(double num1, double num2) {
  // print(num1 + num2);
  return num1 + num2;
}

void main() {
  var p1 = Person(inputName: 'Amka', age: 21);
  var p2 = Person( age: 22, inputName: 'Sumka');
  var p3 = Person.veryOld('Amka');

  print(p3.name);
  print(p3.age);
  print(p1.name);
  print(p2.name);
  double firstResult;
  firstResult = addNumbers(1, 2);
  // ...
  print(firstResult + 1);
  print('Hello World!');
}