import 'wiki_modelo.dart';

class WikiControle {
  final List<WikiModelo> fotos = [
    WikiModelo(
        urli: 'https://en.wikipedia.org/wiki/File:Poland_adm_location_map.svg'),
    WikiModelo(
        urli:
            'https://en.wikipedia.org/wiki/File:Shrine_Of_Allo_Mahar_sharif.jpg'),
  ];

  int atual = 0;

  WikiModelo get fotoAtual => fotos[atual];

  void proximaFrase() {
    if (atual < fotos.length - 1) {
      atual++;
    } else {
      atual = 0;
    }
  }
}
