import 'dart:io';
void main(List<String> args) {
  stdout.writeln("Adinizi daxil edin.");
  stdout.writeln("Yasinizi daxil edin.");
  String name = stdin.readLineSync().toString();
  int age = int.parse(stdin.readLineSync().toString());

  if(age >= 100) {
    print('Yaşınız 100 asagi olmalidir.');
  } else {
    var age2 = (100 - age);
    print('$name, Sizin $age2 ilden sonra 100 yasiniz tamam olacaq.');
  }
}