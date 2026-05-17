class Car {
  String brandName;
  int year;

  Car(this.brandName, this.year);
}
void main() {
  // Function part
  // void greeting({required String name, var age}) {
  //   print('hi &name , how are you');
  // }

  // greeting(name: 'ishrak', age: 21);

  // String newGreeting(String name, [var age = '10']) {
  //   return 'hi $name , and your age is $age';
  // }

  // print(newGreeting('tanvir'));

  // OOP part
  var c = Car('BMW', 1946);
  print(c.brandName);
}
