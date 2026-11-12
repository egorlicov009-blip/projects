import 'dart:io';

void main() {
  stdout.write("Введите ваше имя: ");
  String name = stdin.readLineSync()!;

  stdout.write("Введите ваш город: ");
  String city = stdin.readLineSync()!;

  stdout.write("Введите ваш любимый язык программирования: ");
  String language = stdin.readLineSync()!;

  print("$name из города $city, уважает $language — отличный выбор!");

  stdout.write("Введите текущий год: ");
  String currentYearInput = stdin.readLineSync()!;

  stdout.write("Введите год вашего рождения: ");
  String birthYearInput = stdin.readLineSync()!;

  int currentYear = int.parse(currentYearInput);
  int birthYear = int.parse(birthYearInput);

  int age = currentYear - birthYear;

  print("Ваш точный возраст: $age");
}
