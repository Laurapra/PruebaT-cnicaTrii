import 'dart:html';

import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Persona> _personas = [
    Persona("Jose", "Rodriguez", "4527-44343"),
    Persona("Martin", "Angulo", "6584754-4543"),
    Persona("Isabel", "Angulo", "87754-1767")
   ];

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Login',
      home: MyAppForm(
        appBar: AppBar(
          title: Text('Datos'),
        ),
        body: ListView.builder(
          itemCount: _personas.length,
          itemBuilder: (context, index) {
          return ListTitle(
            title: Text(_personas[index].name + ' ' + _personas[index].lastname),
          );
          })),
      );
    );
  }
}
class Persona{
  String name;
  String lastname;
  String phone;

  Persona(name, lastname, phone){
    this.name = name;
    this,lastname = lastname;
    this.phone = phone;
  }
}