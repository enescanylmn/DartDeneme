import 'dart:io';//dahil etme işlemi kodumuzun en üstünde import ifadesi ile yapılıyor
void main(){
  print("Kullanıcı adınızı giriniz: ");//bu metodun ekrana yazı yazdırdığını daha önce görmüştük
  String? kullaniciAdi = stdin.readLineSync();
  print("Hoşgeldiniz ${kullaniciAdi}");

}