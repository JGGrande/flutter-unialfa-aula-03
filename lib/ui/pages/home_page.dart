import 'package:aula03/datasource/remote/pokemon_remote.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: Text("PokeAPI", style: TextStyle(color: Colors.blue.shade300),),
          centerTitle: true,
          backgroundColor: Colors.red.shade500,
        ),
      ),
    );
  }
}
