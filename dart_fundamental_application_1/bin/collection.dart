
void main() {
  List number = [1, 2, 3, 4, 5];
  print(number);

  List strList = ['hellp', 'hell'];
  print(strList);
  strList.add('asif');
  strList.remove('hell');
  strList.addAll(['yo', 'lo']);
  print(strList);
  for (int i = 0; i < strList.length; i++) {
    // print("$i");
    print('index: ${i + 1} ${strList[i]}');
  }
  for (var name in strList) {
    print('$name');
  }

  // int i =0;
  // do {
  //   print("$i");
  // } while (i <= 5);

  Map<String, dynamic> student = {
    'name': 'tanvir',
    'age': 22,
    'department': 'CSE',
  };
  print(student['fas'] ?? 'NUll ache vai');
  student.remove('age');

  print(student.containsValue('tanvir')); //true

  Map<int, dynamic> x = {1: 'tanvir', 2: 22, 3: 'CSE'};

  print(x[1]);
  print(x[2]);
  print(x[3]);

  student['address'] = 'jibannagar'; //add something to map
  student.forEach((key, value) {
    print('$key is $value ..');
  });
  student['address'] = 'jibannagar';

  //set
  Set<String> numbers = {'1', '2', '4', '4', '3', 'python'};
  print(numbers);
  for (var n in numbers) {
    print(n);
  }
  print(numbers.elementAt(1));
  // print(number.contains('python')) ? "yes" : "nai";

  // adding two list
  var a = [1, 2, 3, 4];
  var b = [5, 6, 7, 8];
  var merged = [...a, ...b];
  print(merged);
}
