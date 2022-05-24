// ignore_for_file: prefer_const_literals_to_create_immutables, implementation_imports, unnecessary_import, prefer_const_constructors, duplicate_ignore, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset('Assets/images/LogoODC.png', fit: BoxFit.cover),
      ),
      body: Column(children: [
        // ignore: prefer_const_constructors
        //design the code course box
        Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(3.0),
          width: 390.0,
          height: 190.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.blueAccent),
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          // ignore: sort_child_properties_last
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 90, left: 20),
            child: Column(
              children: [
                Text(
                  "Enter the Code to Get your course",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white24,
                      //border: OutlineInputBorder(),
                      // labelText: 'Enter Code',
                      hintText: 'Enter Course Code',
                      hintStyle:
                          TextStyle(fontSize: 16.0, color: Colors.white10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
