import 'package:flutter/material.dart';
import 'package: flutter_application_social/USER/UI/widget/textInput.dart';
import 'package: flutter_application_social/USER/UI/widget/googlebotton.dart';
import 'package: flutter_application_social/USER/UI/bloc/bloc1.dart';
import 'package: generic_bloc_provider/generic_blog_provider.dart';
import: 'package:firebase_auth/firebase_auth.dart';
class Login extends StatelessWidget {
  late BlocUser blocUser;
  final _controllerUsername= TextEditingController();
  final _controllerUsername= TextEditingController();
  @override
  Widget build(BuildContext context) {
  blocUser= BlocProvider.of(context);
    return __controlSession();
  }

  Widget __controlSession(){
    return StreamBuilder(
      stream: blocUser.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if (!snapshot.hasData || snapshot.hasError){
          return loginApp();
        }else{
          return Profile();
        }
      });
}
  Widget loginApp(){
      return Scaffold(
        
        body: Container(
          
          child: ListView(children:<Widget>[
            
            Container(height:40.0,
            margin: EdgeInsets.only(top:15.0),
            child: Text
            ("WELCOME TO",
             "MEDITATION CARE",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),),
            Container(margin: EdgeInsets.only(top:15.0),
            Container(
              height: 250.0;
              width: 250.0;
              margin: EdgeInsets.only(top:15.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/IMG/meditacion-25521.jpg"),

                
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.rectangle,

              ),
            ),
            child: Text("La meditación reduce los niveles de estrés y ansiedad porque mejora el bienestar mental, y te ayuda a tener la mente más calmada, permitiéndote afrontar el día de una forma más relajada.",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),),
            Container(margin: EdgeInsets.only(top:15.0),
            ),
           
            Container(
              child:Center(child: MaterialButton(minWidth: 100.0,height: 40.0,inPressed:(){},
              color: Colors.lightBlue),
              child: Text('Get Started',style: TextStyle(color: Colors.white)
              ),),),

            ),
            GoogleButton(text: "login with  gmail", onPressed:(){
              blocUser.singIn().then((UserCredential user)=>print("Usted se a autenticado como ${user.user}"));
            },
             heightC:20, widthC:30, )
          ],
          ]
            
      
    );
  }
}
}