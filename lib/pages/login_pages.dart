import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

  class Loginpage extends StatefulWidget{
     Loginpage({Key key, this.title});
        final String title;

    LoginPageState createState () => new LoginPageState();
}
    enum FormType{
      Login,
       Resgistro
}
    class LoginPageState extends State<Loginpage> {
       final formkey = new GlobalKey<FormState>();

         FormType formType = FormType.Login;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Login"),
      ),
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
          padding: EdgeInsets.all(28.0),
            child: Form(
              key: formkey,
              child: Column(
                children: fomLogin(),
              ),
            ),
      ),
  );
}


List<Widget> fomLogin(){
  return [
    padded(
        child: TextFormField(
          decoration: InputDecoration(
            icon: Icon( Icons.person), labelText: "Nombre",
          ),
          autocorrect: false,
        )
    ),

    padded(
        child: TextFormField(
          decoration: InputDecoration(
            icon: Icon( Icons.person), labelText: "Apellido",
          ),
          autocorrect: false,
        )
    ),

    padded(
        child: TextFormField(
          decoration: InputDecoration(
            icon: Icon( Icons.email), labelText: "Correo electronico",
          ),
          autocorrect: false,
        )
    ),

    padded(
        child: TextFormField(
          decoration: InputDecoration(
            icon: Icon( Icons.lock), labelText: "Contraseña",
          ),
          autocorrect: false,
         obscureText: false,
        )
    ),

    Column(
      children: buttonWidget() ,
    )
  ];
}

// ignore: missing_return
List<Widget> buttonWidget(){
  switch(formType){
    case FormType.Login:
      return [styleButton("Iniciar Sesion", ValidateSubmit), FlatButton(
        child: Text("Si aun no te encuentras registrado, registrate"),
        onPressed: () => updateFormType(FormType.Resgistro) ,
      )];
            case FormType.Resgistro:
               return[styleButton("Registrarse", ValidateSubmit),
                 FlatButton(
                   child: Text("Crear Cuenta"),
                   onPressed: () => updateFormType(FormType.Login) ,
                 )];
       }
    }
    void updateFormType(FormType form) {
      formkey.currentState.reset();
      setState((){
        formType=form;
      });
      }


     // ignore: non_constant_identifier_names
     void ValidateSubmit(){
      (formType == FormType.Login)?print("Iniciar"): print("Registrar");
   }

       Widget styleButton ( String text, VoidCallback onPressed) {
         return  RaisedButton( onPressed: onPressed,
             color: Colors.teal,
               textColor: Colors.white,
                  child: Text("Holaaaaa"),
        );
    }

  Widget padded ({ Widget child}){
  return Padding(
  padding: EdgeInsets.symmetric(vertical: 8.0 ),
child: child,
  );
  }
  }