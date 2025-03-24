import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key}) ;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  
  Widget build(BuildContext context){
    return GestureDetector(
       onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
         extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                height: 250,
                child: (
                  Text("Hola, Bienvenido a la pantalla de inicio")
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}