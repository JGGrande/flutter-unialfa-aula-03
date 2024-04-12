import 'package:aula03/datasource/remote/pokemon_remote.dart';
import 'package:aula03/models/pokemon.dart';
import 'package:aula03/ui/pages/datails_page.dart';
import 'package:aula03/ui/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: Text(
              "PokeAPI",
              style: TextStyle(color: Colors.blue.shade300),
            ),
            centerTitle: true,
            backgroundColor: Colors.red.shade500,
          ),
          body: FutureBuilder(
            future: PokemonRemote().get(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return const Loading();
                default:
                  return _criarLista(context, snapshot.data ?? []);
              }
            },
          )),
    );
  }

  Widget _criarLista(BuildContext context, List<Pokemon> pokemons) {
    return ListView.builder(
        itemCount: pokemons.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                    PageTransition(child: DetailsPage(pokemons[index]), type: PageTransitionType.rightToLeft)
                  );
                },
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Image.network(
                          pokemons[index].image(),
                          width: 100,
                          height: 100,
                        ),
                        Text(
                          pokemons[index].name,
                          style: const TextStyle(fontSize: 22),
                        ),
                        const Icon(Icons.arrow_right_alt)
                      ],
                    ),
                  ),
                ),
              ));
        });
  }
}
