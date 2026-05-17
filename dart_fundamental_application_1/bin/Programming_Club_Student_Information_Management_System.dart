import 'dart:io';

void main() {
  List<Map<String, dynamic>> students = [];

  String getStrVal() {
    return stdin.readLineSync()!;
  }

  int getIntVal() {
    return int.parse(getStrVal());
  }

  double getFltVal() {
    return double.parse(getStrVal());
  }

  //input the number of students
  stdout.write('Enter the number of students: ');
  int numberOfStudents = getIntVal();

  // input details
  for (int i = 0; i < numberOfStudents; i++) {
    print("\nEnter details for the student ${i + 1}");
    stdout.write('Name: ');
    String name = getStrVal();

    stdout.write('Details: ');
    String details = getStrVal();

    stdout.write('Present address: ');
    String preAddress = getStrVal();
    stdout.write('Permanent address: ');
    String permAddress = getStrVal();

    stdout.write("Contact: ");
    String contact = getStrVal();

    stdout.write('Age: ');
    int age = getIntVal();

    stdout.write('Height(float):');
    double height = getFltVal();

    Map<String, dynamic> student = {
      'name': name,
      'details': details,
      'present address': preAddress,
      'permanent address': permAddress,
      'contact': contact,
      'age': age,
      'height': height,
    };

    students.add(student);
  }

  // show all details at once
  print('\n\n===== ALL STUDENT INFORMATION =====');
  stdout.write('\nYou have $numberOfStudents students and they are --- ');
  for (int i = 0; i < students.length; i++) {
    var s = students[i];
    print('\nStudent ${i + 1}');
    print('Name: ${s['name']}');
    print('Details: ${s['details']}');
    print('Present address: ${s['present address']}');
    print('Permanent address: ${s['permanent address']}');
    print('Contact: ${s['contact']}');
    print('Age: ${s['age']}');
    print('Height: ${s['height']}');
  }

  // searching student by his/her name
  stdout.write('\n\nDo you want to search any student? (Y/N) : ');
  String yesNo = getStrVal();
  if (yesNo == 'Y') {
    stdout.write('Serch the student by name: ');
    String searchName = getStrVal();

    var found = false;
    for (var s in students) {
      if (searchName.toLowerCase() == s['name'].toString().toLowerCase()) {
        found = true;
        print('Name: ${s['name']}');
        print('Details: ${s['details']}');
        print('Present address: ${s['present address']}');
        print('Permanent address: ${s['permanent address']}');
        print('Contact: ${s['contact']}');
        print('Age: ${s['age']}');
        print('Height: ${s['height']}');
        break;
      }
    }
    if (found == false) {
        print('Student not found!');
      }
  } 
  else {
    print('No student to find!');
  }

  print('\n\n===== STUDENTS SORTED BY AGE =====');
  students.sort((a, b) => a['age'].compareTo(b['age'])); //ascending order
  for (var s in students) {
    print("${s['name']} - ${s['age']}");
  }

  // printing the oldest student
  print('\n\n===== OLDEST STUDENT =====');
  students.sort((a, b) => b['age'].compareTo(a['age'])); //discending order
  var oldest = students[0];
  print("${oldest['name']} - ${oldest['age']}");
}
