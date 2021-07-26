import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/UI/widget/textimput.dart';

// ignore: use_key_in_widget_constructors
class Profile extends StatelessWidget {
  final _controllerName = TextEditingController();
  final _controllerHobbie = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 250.0,
            width: 250.0,
            margin: EdgeInsets.only(top: 15.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/IMG/meditacion-1234.jpg")),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
          ), //foto

          Container(
            height: 22.0,
            margin: EdgeInsets.only(top: 23.0),
            child: Text(
              "RELAX YOUR MIND",
              "Day episode",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17),
            ),
          ), //Titul //Titulo

          Container(
            height: 40.0,
            margin: EdgeInsets.only(top: 20.0),
            child: Center(
              child: MaterialButton(
                minWidth: 100.0,
                height: 40.0,
                onPressed: () {},
                color: Colors.lightBlue,
                child: Text("save", style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}