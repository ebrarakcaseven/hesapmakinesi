import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hesap_makinasi/widgets/buttontasarimi.dart';

void main() {
  runApp(HesapMakinesi());
}

class HesapMakinesi extends StatefulWidget {
  @override
  _HesapMakinesiState createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  //tutucular
  int sayi1 = 0;
  int sayi2 = 0;
  String gosterilecekSayi = "";
  late String sonuc;
  late String islemTutucu;
  String islemGecmisi = "Geçmiş";

  //button tıklama
  void btnTiklama(String buttonDegeriTutucu) {
    print(buttonDegeriTutucu);

    if (buttonDegeriTutucu == "+") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islemTutucu = buttonDegeriTutucu;
    } else if (buttonDegeriTutucu == "-") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islemTutucu = buttonDegeriTutucu;
    } else if (buttonDegeriTutucu == "X") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islemTutucu = buttonDegeriTutucu;
    } else if (buttonDegeriTutucu == "/") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islemTutucu = buttonDegeriTutucu;
    } else if (buttonDegeriTutucu == "AC") {
      sayi1 = 0;
      sayi2 = 0;
      gosterilecekSayi = "";
      sonuc = "";
      islemTutucu = "";
      islemGecmisi = "Geçmiş";
    } else if (buttonDegeriTutucu == "=") {
      sayi2 = int.parse(gosterilecekSayi);
      if (islemTutucu == "+") {
        sonuc = (sayi1 + sayi2).toString();
        islemGecmisi =
            sayi1.toString() + islemTutucu.toString() + sayi2.toString();
      } else if (islemTutucu == "-") {
        sonuc = (sayi1 - sayi2).toString();
        islemGecmisi =
            sayi1.toString() + islemTutucu.toString() + sayi2.toString();
      } else if (islemTutucu == "X") {
        sonuc = (sayi1 * sayi2).toString();
        islemGecmisi =
            sayi1.toString() + islemTutucu.toString() + sayi2.toString();
      } else if (islemTutucu == "/") {
        sonuc = (sayi1 / sayi2).toString();
        islemGecmisi =
            sayi1.toString() + islemTutucu.toString() + sayi2.toString();
      }
    } else {
      sonuc = int.parse(gosterilecekSayi + buttonDegeriTutucu).toString();
    }
    //Yenileme durum
    setState(() {
      gosterilecekSayi = sonuc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Hesap Makinesi",
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              child: Text(
                islemGecmisi,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            
            Container(
              child: Text(
                gosterilecekSayi,
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                )),
              ),
            ),
            Row(
              children: [
                HesapMakinesiButtonu(
                  metin: "",
                  dolguRengi: 0xFFF3E5F5,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "",
                  dolguRengi: 0xFFF3E5F5,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "AC",
                  dolguRengi: 0xFFF3E5F5,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "/",
                  dolguRengi: 0xFFF3E5F5,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              children: [
                HesapMakinesiButtonu(
                  metin: "7",
                  dolguRengi: 0xFFCE93D8,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "8",
                  dolguRengi: 0xFFCE93D8,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "9",
                  dolguRengi: 0xFFCE93D8,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "+",
                  dolguRengi: 0xFFF3E5F5,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              children: [
                HesapMakinesiButtonu(
                  metin: "4",
                  dolguRengi: 0xFFCE93D8,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "5",
                  dolguRengi: 0xFFCE93D8,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "6",
                  dolguRengi: 0xFFCE93D8,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "-",
                  dolguRengi: 0xFFF3E5F5,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              children: [
                HesapMakinesiButtonu(
                  metin: "1",
                  dolguRengi: 0xFFCE93D8,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "2",
                  dolguRengi: 0xFFCE93D8,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "3",
                  dolguRengi: 0xFFCE93D8,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "X",
                  dolguRengi: 0xFFF3E5F5,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              children: [
                HesapMakinesiButtonu(
                  metin: "",
                  dolguRengi: 0xFFCE93D8,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "0",
                  dolguRengi: 0xFFCE93D8,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: ",",
                  dolguRengi: 0xFFCE93D8,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButtonu(
                  metin: "=",
                  dolguRengi: 0xFFF3E5F5,
                  metinRengi: 0xFF000000,
                  metinBoyutu: 34.0,
                  tiklama: btnTiklama,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
