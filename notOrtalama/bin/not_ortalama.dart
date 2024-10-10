import 'dart:io';

class Ogrenci{
  String ad;
  String soyad;
  List<double> notlar = [];

  Ogrenci(this.ad, this.soyad);

  void notEkle(double not){
    notlar.add(not);
    print("$not başarıyla eklendi");
  }

  double ortalamaHesapla(){
    double toplam = 0;
    for(double not in notlar){
      toplam += not;
    }
    return toplam / notlar.length;
  }
}

void main(){
  print("Lütfen adınızı giriniz:");
  String? ad = stdin.readLineSync();

  print("Lütfen soyadınızı giriniz:");
  String? soyad = stdin.readLineSync();

  Ogrenci ogrenci = Ogrenci(ad ?? "", soyad ?? "");
  
  while(true){
    print("Lütfen eklemek istediğiniz notu girin (çıkmak için 'q'):");
    String? input = stdin.readLineSync();

    if (input != null && input.toLowerCase() == 'q'){
      break;
    }

    double? not = double.tryParse(input ?? "");
    if (not != null){
      ogrenci.notEkle(not);
    }else{
      print("Geçersiz not girdiniz, tekrar deneyin");
    }
  }

  double ortalama = ogrenci.ortalamaHesapla();
  print("${ogrenci.ad} ${ogrenci.soyad} adlı öğrencinin not ortalaması: $ortalama");
}