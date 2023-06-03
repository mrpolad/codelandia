import 'dart:io';

class bAccount2 {
  late final String userName2;
  late final int uCID2;
  late final int uID2;
  late int uBalance2;
  int workIncome2;
  int pinCode2;

  bAccount2({
    required this.userName2,
    required this.uCID2,
    required this.uID2,
    required this.uBalance2,
    required this.workIncome2,
    required this.pinCode2});

aboutAcc2() {
  print('Ad: $userName2, Istifadeci ID: $uCID2, Balans: $uBalance2');
}

incomePerMonth2() {
  uBalance2 = uBalance2 += workIncome2;
  print('Aylıq maaşınız hesabınıza yükləndi! Hal hazırki balansınız $uBalance2 AZN.');
  incomePerMonth2();
}

income2() {
  print('Mədaxil etmək istədiyiniz pul miqdarını daxil edin!');
  int incomeMoney = int.parse(stdin.readLineSync()!);
  if (incomeMoney <= 0) {
    print('Daxil etmək istədiyiniz məbləğ 0\'dan boyuk olmalidir.');
    income2();
  } else {
    print('Məbləğ uğurla karta daxil edildi!');
  }
  uBalance2 = uBalance2 += incomeMoney;
  print('Kartınıza $income2 AZN pul yükləndi. Hal hazırki balansınız $uBalance2 AZN.');
  aboutAcc2();
}

expense2() {
  print('Kartdan məxaric etmək istədiyiniz məbləği daxil edin.');
  int expenseMoney2 = int.parse(stdin.readLineSync()!);
  if (expenseMoney2 <= 0) {
    print('Məxaric məbləği 0\' böyük olmalıdır.');
  } else if (expenseMoney2 > uBalance2) {
    print('Sizin balans məxaric məbləğindən kiçikdir. Zəhmət olmasa daha az məbləğ məxaric edin!');
    expense2();
  } else {
    uBalance2 = uBalance2 - expenseMoney2;
    print('Məbləğ uğurla məxaric olundu!');
    aboutAcc2();
  }
}
}
