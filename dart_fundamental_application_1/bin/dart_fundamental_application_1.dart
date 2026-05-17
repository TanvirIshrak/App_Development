import 'dart:io';

void main() {
  final DateTime now = DateTime.now();
  const String institute = 'highschool';
  print('''  ===========================
  Institute name : $institute
  Date : $now
  ===========================''');

  String grade;
  int marks;
  
  stdout.write('Enter your name:');
  String? name = stdin.readLineSync()!;
  name = name.trim() ?? "Name is not provided";   // do left operation ??(if null) then do right operation
  print(name);

  stdout.write(('Enter your marks: '));
  marks = int.parse(stdin.readLineSync()!);

  if (marks >= 80) {
    grade = 'A+';
  } else if (marks >= 70) {
    grade = 'A';
  } else if (marks >= 60) {
    grade = 'A-';
  } else if (marks >= 50) {
    grade = 'B';
  } else
    grade = 'F';

  print('Your grade: $grade');
}
