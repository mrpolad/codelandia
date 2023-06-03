import 'dart:io';
import 'task15acc2.dart';
import 'task15acc.dart';

void main(List<String> args) {
  bAccount user = bAccount(
    userName: 'Polad',
    uID: 123,
    uCID: 4169741301025632,
    uBalance: 25,
    workIncome: 100,
    pinCode: 2008
  );
  
  bAccount2 user2 = bAccount2(
    userName2: 'Kamal',
    uCID2: 4169741325326326,
    uID2: 133,
    uBalance2: 235,
    workIncome2: 150,
    pinCode2: 2024
  );

  int sendMoney;
  int newBalance;
  int pinCodeIn;
  int inputATM;

  print('Xoş gəlmisiniz. Daxil olmaq istədiyiniz hesabı seçin. ${user.userName} üçün 1, ${user2.userName2} üçün 2 rəqəmini daxil edin.');
  
  int accChoose = int.parse(stdin.readLineSync()!);
  if(accChoose == 1) {
    print('Xoş gəlmisiniz ${user.userName}! Hal hazırda istifadə etdiyiniz hesab nömrəsi ${user.uCID}.');
    print('Hesabınıza daxil ola bilmək üçün PİN kodunuzu daxil edin.');
    pinCodeIn = int.parse(stdin.readLineSync()!);
    if(user.pinCode == pinCodeIn) {
    print('Məlumatları doğru daxil etdiniz.');
    print('Zehmet olmazsa medaxil ucun 1, mexaric ucun 2, card to card ucun 3,kartda haqqinda melumat ucun 4, reqemini daxil edin.');
    inputATM = int.parse(stdin.readLineSync()!);
    if(inputATM == 1) {
      user.income();
    } else if (inputATM == 2) {
      user.expense();
    } else if (inputATM == 3) { //cardtocard
      print('Pul gondermek istediyiniz shexse aid olan user ID\'yi daxil edin.');
      int cardUID = int.parse(stdin.readLineSync()!);
        if (cardUID == user.uID) {
          print('Siz ${user.uCID} nömrəli karta yəni ${user.userName} adlı şəxsə pul göndərirsiniz.');
          print('Zehmet olmasa göndəriləcək məbləği daxil edin.');
          sendMoney = int.parse(stdin.readLineSync()!);
            if(sendMoney > user.uBalance) {
            print('Göndəriləcək məbləğ balansdan çox olduğundan proses uğursuzdur.');
            } else {
            newBalance = user.uBalance + sendMoney;
            print('Məbləğ uğurla göndərildi. Yenilənmiş balansınız ${user.uBalance}');
            }
          } else {
            print('Siz ${user2.uCID2} nömrəli karta yəni ${user2.userName2} adlı şəxsə pul göndərirsiniz.');
            print('Zehmet olmasa göndəriləcək məbləği daxil edin.');
            sendMoney = int.parse(stdin.readLineSync()!);
              if(sendMoney > user.uBalance) {
              print('Göndəriləcək məbləğ balansdan çox olduğundan proses uğursuzdur.');
            } else {
              newBalance = user2.uBalance2 + sendMoney;
              user.uBalance = user.uBalance - sendMoney;
              print('Məbləğ uğurla göndərildi. Yenilənmiş balansınız ${user.uBalance}');
              print('Hörmətli ${user2.userName2} sizin balansınız ${user.userName} tərəfindən artırılmışdır. Yenilənmiş balansınız $newBalance');
              }
            }
    }
      else if (inputATM == 4) {
      user.aboutAcc();
    } else {
      print('Zehmet olmazsa 1,2 ve ya 3 reqemini secin.');
    }}
    else {
    print('Pinkodu doğru daxil etmədiniz. Zəhmət olmazsa yenidən yoxlayın.');
    }
} else {
  print('Xoş gəlmisiniz ${user2.userName2}! Hal hazırda istifadə etdiyiniz hesab nömrəsi ${user2.uCID2}.');
  print('Hesabınıza daxil ola bilmək üçün PİN kodunuzu daxil edin.');
  pinCodeIn = int.parse(stdin.readLineSync()!);
  if(user2.pinCode2 == pinCodeIn) {
    print('Məlumatları doğru daxil etdiniz.');
    print('Zehmet olmazsa medaxil ucun 1, mexaric ucun 2, card to card ucun 3,kartda haqqinda melumat ucun 4, reqemini daxil edin.');
    inputATM = int.parse(stdin.readLineSync()!);
    if(inputATM == 1) {
      user2.income2();
    } else if (inputATM == 2) {
      user2.expense2();
    } else if (inputATM == 3) { //cardtocard
      print('Pul gondermek istediyiniz shexse aid olan user ID\'yi daxil edin.');
      int cardUID = int.parse(stdin.readLineSync()!);
        if (cardUID == user.uID) {
          print('Siz ${user.uCID} nömrəli karta yəni ${user.userName} adlı şəxsə pul göndərirsiniz.');
          print('Zehmet olmasa göndəriləcək məbləği daxil edin.');
          sendMoney = int.parse(stdin.readLineSync()!);
            if(sendMoney > user2.uBalance2) {
            print('Göndəriləcək məbləğ balansdan çox olduğundan proses uğursuzdur.');
            } else {
            newBalance = user.uBalance + sendMoney;
            user2.uBalance2 = user2.uBalance2 - sendMoney;
            print('Məbləğ uğurla göndərildi. Sizin balansınız ${user2.uBalance2}');
            print('Hörmətli ${user.userName} sizin balansınız ${user2.userName2} tərəfindən artırılmışdır. Yenilənmiş balansınız $newBalance');
            }
          } else {
            print('Siz ${user2.uCID2} nömrəli karta yəni ${user2.userName2} adlı şəxsə pul göndərirsiniz.');
            print('Zehmet olmasa göndəriləcək məbləği daxil edin.');
            sendMoney = int.parse(stdin.readLineSync()!);
              if(sendMoney > user.uBalance) {
              print('Göndəriləcək məbləğ balansdan çox olduğundan proses uğursuzdur.');
            } else {
              newBalance = user.uBalance + sendMoney;
              user2.uBalance2 = user2.uBalance2 - sendMoney;
              print('Məbləğ uğurla göndərildi. Yenilənmiş balansınız ${user2.uBalance2}');
              print('Hörmətli ${user.userName} sizin balansınız ${user2.userName2} tərəfindən artırılmışdır. Yenilənmiş balansınız $newBalance');
              }
            }
    }
      else if (inputATM == 4) {
      user2.aboutAcc2();
    } else {
      print('Zehmet olmazsa 1,2 ve ya 3 reqemini secin.');
    }
  } else {
    print('Pinkodu doğru daxil etmədiniz. Zəhmət olmazsa yenidən yoxlayın.');
  }}

// cardtocard() {
//   print('Pul gondermek istediyiniz shexse aid olan kart nomresini daxil edin.');
//   int cardUID = int.parse(stdin.readLineSync()!);
//   if (cardUID == user.uCID) {
//     print('Siz ${user.uCID} nömrəli karta yəni ${user.userName} adlı şəxsə pul göndərirsiniz.');
//   } else {
//     print('Siz ${user2.uCID2} nömrəli karta yəni ${user2.userName2} adlı şəxsə pul göndərirsiniz.');
//     sendMoney = int.parse(stdin.readLineSync()!);
//     if(sendMoney > user.uBalance || sendMoney > user2.uBalance2) {
//       print('Göndəriləcək məbləğ balansdan çox olduğundan proses uğursuzdur.');
//     } else {
//       newBalance = user.uBalance + sendMoney;
//       print('Məbləğ uğurla göndərildi. Yenilənmiş balansınız ${user.uBalance}');
//     }
//     print('');
//     }
// }
}
