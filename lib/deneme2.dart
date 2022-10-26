import 'dart:io';
void main(){
  print("Hangi yemeği söylemek istersiniz?");
  print("1-) Hamburger");
  print("2-) İskender");
  print("3-) Omlet");
  int secim = int.parse(stdin.readLineSync()!);
  switch(secim)
  {
    case 1:
      print("Hamburgeri seçtiniz");
      break;
    case 2:
      print("İskenderi seçtiniz");
      break;
    case 3:
      print("Omleti seçtiniz");
      break;
    default:
      print("Geçersiz seçim yaptınız");
      print("Bir case içinde birden fazla deyim olabilir");
      break;

  }

}