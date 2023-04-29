import 'dart:io';

main() {
  stdout.writeln("Minimum 5 soz daxil edin.");
  String soz = (stdin.readLineSync().toString());
  print(soz.split(' ').reversed.join(" "));
}