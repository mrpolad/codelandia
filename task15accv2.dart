import 'dart:io';

class bAccount {
  late final String userName;
  late final int uCID;
  late final int uID;
  late int uBalance;
  int workIncome;
  int pinCode;

  bAccount({
    required this.userName,
    required this.uCID,
    required this.uID,
    required this.uBalance,
    required this.workIncome,
    required this.pinCode});

aboutAcc() {
  print('Ad: $userName, Istifadeci ID: $uCID, Balans: $uBalance');
}

incomePerMonth() {
  uBalance = uBalance += workIncome;
  print('Aylıq maaşınız hesabınıza yükləndi! Hal hazırki balansınız $uBalance AZN.');
  incomePerMonth();
}

income() {
  print('Mədaxil etmək istədiyiniz pul miqdarını daxil edin!');
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
  print('Kartdan məxaric etmək istədiyiniz məbləği daxil edin.');
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

// class bAccount2 {
//   late final String userName2;
//   late final int uCID2;
//   late int uBalance;
//   int workIncome;
//   int pinCode;
  
//   bAccount2({
//     required this.userName2,
//     required this.uCID2,
//     required this.uBalance,
//     required this.workIncome,
//     required this.pinCode});

// aboutAcc() {
//   print('Ad: $userName2, Istifadeci ID: $uCID2 Balans: $uBalance');
// }

// cardtocard() {
//   print('Kartına pul gondermek istediyiniz shexse aid olan kart nomresini daxil edin.');

// }

// incomePerMonth() {
//   uBalance = uBalance += workIncome;
//   print('Aylıq maaşınız hesabınıza yükləndi! Hal hazırki balansınız $uBalance AZN.');
//   incomePerMonth();
// }

// income() {
//   print('Mədaxil etmək istədiyiniz pul miqdarını daxil edin!');
//   int incomeMoney = int.parse(stdin.readLineSync()!);
//   if (incomeMoney <= 0) {
//     print('Daxil etmək istədiyiniz məbləğ 0\'dan boyuk olmalidir.');
//     income();
//   } else {
//     print('Məbləğ uğurla karta daxil edildi!');
//   }
//   uBalance = uBalance += incomeMoney;
//   print('Kartınıza $income AZN pul yükləndi. Hal hazırki balansınız $uBalance AZN.');
//   aboutAcc();
// }

// expense() {
//   print('Kartdan məxaric etmək istədiyiniz məbləği daxil edin.');
//   int expenseMoney = int.parse(stdin.readLineSync()!);
//   if (expenseMoney <= 0) {
//     print('Məxaric məbləği 0\' böyük olmalıdır.');
//   } else if (expenseMoney > uBalance) {
//     print('Sizin balans məxaric məbləğindən kiçikdir. Zəhmət olmasa daha az məbləğ məxaric edin!');
//     expense();
//   } else {
//     uBalance = uBalance - expenseMoney;
//     print('Məbləğ uğurla məxaric olundu!');
//     aboutAcc();
//   }
// }
// }
