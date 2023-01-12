import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmartPrducts extends StatefulWidget {
   SmartPrducts({Key? key}) : super(key: key);

  @override
  State<SmartPrducts> createState() => _SmartPrductsState();
}

class _SmartPrductsState extends State<SmartPrducts> {
  final List products = [
    ['Smart Fan', 'lib/smartpics/fanz.jpg',true],
    ['Smart AC', 'lib/smartpics/ac.jpg',false],
    ['Smart Light', 'lib/smartpics/bulb.jpg',false],
    ['Smart TV', 'lib/smartpics/tvz.jpg',true],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade500,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(Icons.arrow_back_rounded, size: 50,)),
            ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('AS WE EVOLVE, OUR HOME SHOULD TOO !',
              style: GoogleFonts.walterTurncoat(textStyle: TextStyle(fontWeight: FontWeight.w700,
                  color: Colors.black, fontSize: 30,
                  shadows: [
                    Shadow(offset: Offset(1.5, 1.5),blurRadius: 3,color: Colors.purple.shade100),
                    // Shadow(offset: Offset(1, 1),blurRadius: 3,color: Colors.teal),
                  ]),),
            ),  ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Divider(color: Colors.grey.shade100,),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Your Smart Devices',
                  style: GoogleFonts.quando(textStyle: TextStyle(fontWeight: FontWeight.w600,
                      color: Colors.green, fontSize: 20,
                      shadows: [
                        Shadow(offset: Offset(1.5, 1.5),blurRadius: 3,color: Colors.grey.shade800),
                        // Shadow(offset: Offset(1, 1),blurRadius: 3,color: Colors.teal),
                      ]),),),
              ),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: products.length,
                itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(color: Colors.white,
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                Image.asset(products[i][1], height: 80),
                                Text(products[i][0],
                                  style: GoogleFonts.quando(textStyle: TextStyle(fontWeight: FontWeight.w500,
                                      color: Colors.black, fontSize: 20,
                                    shadows: [
                                      Shadow(offset: Offset(1.5, 1.5),blurRadius: 3,color: Colors.purple.shade100),
                                      // Shadow(offset: Offset(1, 1),blurRadius: 3,color: Colors.teal),
                                    ]),),)
                              ],), ),  ],   ),
                        CupertinoSwitch(value: products[i][2],
                            onChanged: (value) {
                                  setState(() {
                                    products[i][2] = value;
                                  });
                        }),
                      ],
                    ),
                  ),
                ),
              );
                }),
          ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: IconButton(onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.arrow_back_rounded, size: 50,)),
              ),
            ],)
        ),
      ),
    );
  }
}
