
import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class MyAppForm extends StatefulWidget {
  MyAppForm({Key key}) : super(key: key);

  @override
  _MyAppFormState createState() => _MyAppFormState();
}
class _MyAppFormState extends State<MyAppForm> {

  String _nombre;
  String _email;
  String _pasword;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 90.0
        ),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/LOGO.png"),
              ),
              Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'arial',
                  fontSize: 50.0
                ),
              ),
              Text(
                'Ingrese sus datos',
                style: TextStyle(
                  fontFamily: 'arial',
                  fontSize: 20.0
                ),
              ),
              SizedBox(
                width: 160.0,
                height: 50.0,
                child: Divider(
                  color: Colors.black 
                  ),
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  hintText: 'USER-NAME',
                  labelText: 'User name:',
                  suffixIcon: Icon(
                    Icons.verified_user
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                onSubmitted: (valor){
                  _nombre= valor;
                  print("El nombre es $_nombre");
                },
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  suffixIcon: Icon( Icons.alternate_email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
                onSubmitted: (valor){
                  _email= valor;
                  print("El email es $_email");
                },
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Pasword',
                  labelText: 'Pasword',
                  suffixIcon: Icon( Icons.lock_clock_outlined),
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20.0) 
                  )
                ),
                onSubmitted: (valor){
                  _pasword= valor;
                  print("El pasword es $_pasword");
                },
              ),
              Divider(
                height: 18.0,
              ),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  hoverColor: Colors.lightBlue,
                  child: Text("Sing In",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 30.0,
                    fontFamily: 'arial'
                  ),
                  ),
                  color: Colors.lightBlueAccent,
                  onPressed: (){
                    print('Diste clik');
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}