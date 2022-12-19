import 'package:businesscard3/larry.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 800,
              width: 100,
              color: const Color.fromARGB(255, 1, 121, 5),
            ),
            Expanded(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                CircleAvatar(
                radius: 125,
                backgroundImage: AssetImage("assets/larry.jpg"),
              )
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text("Larry Bird", 
                  style:  GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold
                  )
                  ),
                  ),  
                ]
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Text("(Retired) Professional Basketball Player", 
                  style:  GoogleFonts.luxuriousRoman(
                  textStyle: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                    fontWeight: FontWeight.w500
                  ),
                  )
                ),
              ],  
              ),
              Container(
                margin: const EdgeInsets.all(20),
                  width: 500,
                  height: 100,
                  color: const Color.fromARGB(255, 1, 121, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.phone_android, size: 40, ), 
                      Center(
                      child: Text("705-123-4567",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )
                  )
                  )
                  )
                    ]
                  ),
              ),
                Container(
                margin: const EdgeInsets.all(10),
                  width: 500,
                  height: 100,
                  color: const Color.fromARGB(255, 1, 121, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Center(
                       child: TextButton(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Larry())),
                        child: Text(
                          "About The Man",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold, 
                    )
                        )
                  )
                  )
                  )
                    ],
                  ),
                ) 
            ],
              ),
            ),
              Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 800,
              width: 100,
              color: const Color.fromARGB(255, 1, 121, 5),
            ),
          ]
          )
          ),
        ),
      );
  }
}