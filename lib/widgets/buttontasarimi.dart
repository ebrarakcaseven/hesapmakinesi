import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HesapMakinesiButtonu extends StatelessWidget {
  final String metin;
  final int dolguRengi;
  final int metinRengi;
  final double metinBoyutu;
  final Function tiklama;

  const HesapMakinesiButtonu({
    required this.metin,
    required this.dolguRengi,
    required this.metinRengi,
    required this.metinBoyutu,
    required this.tiklama,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          onPressed: () {
            tiklama(metin);
          },
          color: Color(dolguRengi),
          textColor: Color(metinRengi),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Text(
            metin,
            style: GoogleFonts.rubik(
                textStyle: TextStyle(
              fontSize: metinBoyutu,
            )),
          ),
        ),
      ),
    );
  }
}
