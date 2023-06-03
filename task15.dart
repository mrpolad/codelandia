import 'dart:io';

import 'task15acc.dart';

void main(List<String> args) {
  bAccount user = bAccount(
    userName: 'Polad',
    uID: 1030,
    uBalance: 25,
    workIncome: 100,
    pinCode: 2008
  );
  
  int pinCodeIn;
  int inputATM;
  
  print('Xoş gəlmisiniz ${user.userName}! Hal hazırda istifadə etdiyiniz hesab nömrəsi ${user.uID}.');
  print('Hesabınıza daxil ola bilmək üçün PİN kodunuzu daxil edin.');
  pinCodeIn = int.parse(stdin.readLineSync()!);
  if(user.pinCode == pinCodeIn) {
    print('Məlumatları doğru daxil etdiniz.');
    print('Zehmet olmazsa medaxil ucun 1, mexaric ucun 2, kartdaki balans haqqinda melumat almaq ucun 3 reqemini daxil edin.');
    inputATM = int.parse(stdin.readLineSync()!);
    if(inputATM == 1) {
      user.income();
    } else if (inputATM == 2) {
      user.expense();
    } else if (inputATM == 3) {
      user.aboutAcc();
    } else {
      print('Zehmet olmazsa 1,2 ve ya 3 reqemini secin.');
    }
  } else {
    print('Pinkodu doğru daxil etmədiniz. Zəhmət olmazsa yenidən yoxlayın.');
  }
}
