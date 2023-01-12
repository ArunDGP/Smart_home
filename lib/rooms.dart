import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home/smart_products.dart';

class Rooms extends StatelessWidget {
  final String image;
  final String name;
  Rooms(this.name, this.image);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => SmartPrducts())) ,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(44),topLeft: Radius.circular(44)),
                color: Colors.red,
                image:
                    DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
            child: Center(
                child: Text(
              name,
              textAlign: TextAlign.center,
              style: GoogleFonts.sahitya(textStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.white, fontSize: 20,
                  shadows: [
                    Shadow(offset: Offset(1.5, 1.5),blurRadius: 3,color: Colors.purple),
                    // Shadow(offset: Offset(1, 1),blurRadius: 3,color: Colors.teal),
                  ]),),
            ))),
      ),
    );
  }
}
