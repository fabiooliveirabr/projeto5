import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}


//---Criando um Scaffold com Statefull Widget---
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Image.asset("assets/senai.png", width: 300,),

            ElevatedButton(onPressed: (){}, child: Text("Clique"),),

            Text("Clique aqui 1x vez"),

            Text("Clique aqui 2x vezes"),

            Text("Clique e segure por alguns segundos"),


          ],
        ),

      ),
    );
  }
}