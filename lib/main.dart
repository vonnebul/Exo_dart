import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String data = "coucou";
  List datas = ["Salut","comment","ca","va","?"];
  Livre livre = new Livre("les misérables", "Victor Hugo", 10);
  @override
  Widget build(BuildContext context) {
    return(Column(
      children: [
        Text(data),
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: datas.length,
          itemBuilder:(context, i){
            return Text(datas[i]);
          }
        ),
        livre.Vue(),
        
      ],
    ));
  }
}

// exo 2
class Rectangle {

  double longeur;
  double largueur;

  Rectangle(this.longeur,  this.largueur);

  perimetre(){
    return (largueur+longeur)*2;
  }

  surface(){
    return largueur*longeur;
  }

  double get Longeur{
    return longeur;
  }

  double get Largeur{
    return largueur;
  }

  void set Longeur(double longeur){
    this.longeur = longeur;
  }
  void set Largeur(double largueur){
    this.largueur = largueur;
  }
}

class Parallelepipede extends Rectangle{
  double hauteur;

  Parallelepipede(super.longeur, super.largueur, this.hauteur);

  Volume(){
    return super.largueur*super.Longeur*hauteur;
  }
}

class Livre {
  String titre;
  String auteur;
  int prix;

  Livre(this.titre, this.auteur, this.prix);

  Widget Vue(){
    return(Column(
      children: [
        Text(titre),
        Text(auteur),
        Text(prix.toString()),
      ],
    ));
  }
}