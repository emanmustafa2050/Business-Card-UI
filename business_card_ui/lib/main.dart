import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: const Color(0xff102C50),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const CircleAvatar(    // -- > first thing in column
            radius: 112,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 110,
             backgroundImage: AssetImage('images/Blue Modern Business Card.png'),
            ),
          ),
          //-----------------------------------------------------------------
          const Text('Eman Mustafa',   // // -- > second thing in column
          style: TextStyle(color: Colors.white,fontSize: 32,fontFamily: 'Pacifico',),
          ),
          const Text('FLUTTER DEVELOPER', // // -- > third thing in column
          style: TextStyle(fontSize: 18,color: Color(0xff6C8090), fontWeight: FontWeight.bold,),
          ),
          //-----------------------------------------------------------------
          const Divider(
            color: Color(0xff6C8090),
            thickness: 2,
            indent: 60,
            endIndent: 60,
            
          ),
          //-------------------------------------------------------------------

          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
            child: const ListTile(
              leading: Icon(Icons.phone,color:Color(0xff102C50) ,size: 36,),
              title: Text('(+20) 33758277', style: TextStyle(fontSize: 18,),),
            ),
          ),
          //-------------------------------------------------------------------
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
            child: const ListTile(
              leading: Icon(Icons.mail, color:Color(0xff102C50) ,size: 36,),
              title: Text('emanmustafa918@gmail.com', style: TextStyle(fontSize: 16,)),
            ),
          ),
        ],),
      ),
    );
  }
}

