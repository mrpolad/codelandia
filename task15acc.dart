import 'dart:io';

class bAccount {
  late final String userName;
  late final int uID;
  late int uBalance;
  int workIncome;
  int pinCode;
  
  bAccount({
    required this.userName,
    required this.uID,
    required this.uBalance,
    required this.workIncome,
    required this.pinCode});

aboutAcc() {
  print('Ad: $userName, Istifadeci ID: $uID, Balans: $uBalance');
}

incomePerMonth() {
  uBalance = uBalance += workIncome;
  print('Aylıq maaşınız hesabınıza yükləndi! Hal hazırki balansınız $uBalance AZN.');
  incomePerMonth();
}

income() {
  stdout.writeln('Mədaxil etmək istədiyiniz pul miqdarını daxil edin!');
  int incomeMoney = int.parse(stdin.readLineSync()!);
  if (incomeMoney <= 0) {
    print('Daxil etmək istədiyiniz məbləğ 0\'dan boyuk olmalidir.');
    income();
  } else {
    print('Məbləğ uğurla karta daxil edildi!');
  }
  uBalance = uBalance += incomeMoney;
  print('Kartınıza $income AZN pul yükləndi. Hal hazırki balansınız $uBalance AZN.');
  aboutAcc();
}

expense() {
  stdout.writeln('Kartdan məxaric etmək istədiyiniz məbləği daxil');
  int expenseMoney = int.parse(stdin.readLineSync()!);
  if (expenseMoney <= 0) {
    print('Məxaric məbləği 0\' böyük olmalıdır.');
  } else if (expenseMoney > uBalance) {
    print('Sizin balans məxaric məbləğindən kiçikdir. Zəhmət olmasa daha az məbləğ məxaric edin!');
    expense();
  } else {
    uBalance = uBalance - expenseMoney;
    print('Məbləğ uğurla məxaric olundu!');
    aboutAcc();
  }
}
}
