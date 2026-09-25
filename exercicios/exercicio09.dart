void exercicio09(){
  final canais = <String>[
    'geral',
    'dart',
    'flutter',
  ];

  canais.add('avisos');
  canais.remove('geral');

  for (final canal in canais) {
    print('#$canal');
  }

}

/*
void main () {
  exercicio09();
}
*/