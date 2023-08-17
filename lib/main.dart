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
            
            GestureDetector(
              onDoubleTap: () => print("Imagem tocada 2x"),
              onTap: () => print("Imagem tocada"),
              child: Image.asset("assets/senai.png", width: 300,),
            ),
    
            ElevatedButton(
              onLongPress: (){},
              onPressed: (){
                print("Botão foi clicado");
              }, 
            child: Text("Clique"),
            ),
            
            GestureDetector(
              onTap: (){ print("Texto tocado 1x"); },
              child: Text("Clique aqui 1x vez"),
            ),
            
            GestureDetector(
              onDoubleTap: () => print("Tocado 2x"),
              child: Text("Clique aqui 2x vezes"),
            ),
            
            GestureDetector(
              onLongPress: () => print("Longo toque"),
              child: Text("Clique e segure por alguns segundos"),
            ),
            


          ],
        ),

      ),
    );
  }
}