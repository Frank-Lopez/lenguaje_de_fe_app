import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(
  theme: ThemeData(
    brightness:Brightness.dark,
    primaryColor: Colors.blue,
    accentColor: Colors.white,

  ),
  home: SecondActivity(),
));
}
class SecondActivity extends StatefulWidget{
  @override
  _State createState()=> _State();

}

class _State extends State<SecondActivity>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
    title: Text("Anuncios", style: TextStyle(color: Colors.amberAccent), textAlign: TextAlign.center,),
    ),
    body: ListView(
        children: ListTile.divideTiles(
            context: context,
            tiles: [
              ListTile(
                title: Text("Domingo: Servicio de 7:00 pm a 8:00 pm",
                  textAlign: TextAlign.center, style: TextStyle(color: Colors.white), ),
              ),
              ListTile(
                title: Text("Martes : Estudio Biblico a las 7:00 pm",
                  textAlign: TextAlign.center,),
              ),
              ListTile(
                title: Text("Todos los dias acerquemonos mas a Dios en familia o solos con nuestro Tiempo con Dios ",
                  textAlign: TextAlign.center,),
              ),
              ListTile(
                title: Text("Conferencia de *Como llevar la anciedad en tiempos de pandemia*",
                  textAlign: TextAlign.center,),
              ),
            ]).toList(),
       ),
    );

  }

}