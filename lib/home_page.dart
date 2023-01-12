import 'package:flutter/material.dart';
import 'package:smart_home/rooms.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  final List rooms = [
    ['Living Room','lib/smartpics/livingroom.jpg'],
    ['Master Bedroom','lib/smartpics/masterbedroom.jpg'],
    ['Dining Room','lib/smartpics/diningroom.jpg'],
    ['Kitchen','lib/smartpics/kitchen.jpg'],
    ['Kids Bedroom','lib/smartpics/kidsbedroom.jpg'],
    ['Home Office','lib/smartpics/homeoffice.jpg'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                child: Center(
                  child: Row(
                    children: [
                      Text('26°c',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38,color: Colors.black,
                          shadows: [
                            Shadow(offset: Offset(1, 1),blurRadius: 3,color: Colors.grey.shade600),
                            // Shadow(offset: Offset(1, 1),blurRadius: 3,color: Colors.teal),
                          ],),),
                      SizedBox(width: 6),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20,left: 5),
                        child: Container(child: Image.asset('lib/smartpics/house.png',color: Colors.black),height: 50,),
                      ),
                    ],
                  ),
                ),
              ),
              Container(height:85, width:85,
                decoration: BoxDecoration(shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade700),
                image: DecorationImage(image: AssetImage('lib/smartpics/billgates.jpg'),fit: BoxFit.cover)
                ),)
            ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text('Hello BillGates',
              style: GoogleFonts.jacquesFrancois(textStyle:TextStyle(fontWeight: FontWeight.bold, fontSize: 32,
                shadows: [
                  Shadow(offset: Offset(1.5, 1.5),blurRadius: 3,color: Colors.grey.shade100),
                  // Shadow(offset: Offset(1, 1),blurRadius: 3,color: Colors.teal),
                ]
            ),),)
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text('Welcome to your Smart Home',
              style: GoogleFonts.sahitya(textStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey.shade100, fontSize: 25,
              shadows: [
                Shadow(offset: Offset(1.5, 1.5),blurRadius: 3,color: Colors.black),
               // Shadow(offset: Offset(1, 1),blurRadius: 3,color: Colors.teal),
              ]),),),),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Divider(color: Colors.grey.shade100,),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:20,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All Rooms',
                    style: GoogleFonts.sahitya(textStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey.shade100, fontSize: 25,
                        shadows: [
                          Shadow(offset: Offset(1.5, 1.5),blurRadius: 3,color: Colors.black),
                          // Shadow(offset: Offset(1, 1),blurRadius: 3,color: Colors.teal),
                        ]),),),
                Icon(Icons.arrow_forward_ios_sharp,size: 30,)
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:2,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('click your rooms',style: TextStyle(fontSize: 15),),
                ],
              ),
            ),
            Expanded(child:
            Container(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: rooms.length,
                itemBuilder: (context,index) {
              return Rooms(rooms[index][0],rooms[index][1]);
            }),
            ))
        ],),
      ),
    );
  }
}
