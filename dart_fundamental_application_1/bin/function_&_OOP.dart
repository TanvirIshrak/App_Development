void main() {
  void greeting({required String name, var age}) {
    print('hi &name , how are you');
  }

  greeting(name: 'ishrak', age: 21);

  String newGreeting(String name, [var age = '10']) {
    return 'hi $name , and your age is $age';
  }

  print(newGreeting('tanvir'));

  
}
