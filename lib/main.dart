import 'package:flutter/material.dart';
import "second.dart";

void main (){
runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
  routes: < String, WidgetBuilder>{
   "/a": (BuildContext context) => SecondActivity()
  }
));
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => _State();

}

class _State extends State<MyApp>{
  get children => null;
var  nombre = "Frank";
var email = "Frank33.flp@gmail.com";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black54,

    appBar: AppBar(
      title: Text('Lenguaje de Fe',)
    ),
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
          accountName: Text("Hola $nombre"),
            accountEmail: Text(email),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.lightGreenAccent,
            ),
      ),
          ListTile(
            leading: Icon(Icons.assignment_return),
            title: Text ("Anuncios"),
            onTap: (){
              Navigator.pop(context);
              Navigator.of(context).pushNamed("/a");

            },
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text ("Tiempo con Dios"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.whatshot),
            title: Text ("Testimonios"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.accessibility_new),
            title: Text ("Conocenos"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text ("Contacto"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
    body: Center(
      child: Row(
        children: <Widget>[
          Image.asset('assets/image/logoLDF.png', width: 350,height: 250,),
      ],),
            )
          );
  }
}