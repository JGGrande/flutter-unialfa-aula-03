import 'package:aula03/config.dart';
import 'package:aula03/extensions/string_extension.dart';

class Pokemon {
  String name;
  String url;

  Pokemon({ required this.name, required this.url });

  int id(){
    String urlReplaced = url.replaceAll(serverURL, '').replaceAll('/', '');
    return urlReplaced.toInt();
  }

  String image(){
    return 'https://raw.githubsercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/${id()}.png';
  }

}