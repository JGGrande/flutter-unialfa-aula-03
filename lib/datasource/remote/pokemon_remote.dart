import 'package:aula03/config.dart';
import 'package:aula03/models/pokemon.dart';
import 'package:aula03/services/http_client.dart';

class PokemonRemote {
  final _httpClient = HttpClient();

  Future<List<Pokemon>> get() async {
    final responseList = await _httpClient.getJson(url: linkAPI);

    Iterable<Pokemon> pokemonList = responseList.map((e) => Pokemon(name: e['name'], url: e['url']));

    return pokemonList.toList();
  }
}