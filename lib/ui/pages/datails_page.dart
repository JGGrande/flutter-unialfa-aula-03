import 'package:aula03/models/pokemon.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Pokemon pokemon;

  const DetailsPage(this.pokemon,{ super.key });

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(pokemon.name, style: TextStyle(color: Colors.blue.shade300)),
          backgroundColor: Colors.red.shade500,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(pokemon.image(), fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
