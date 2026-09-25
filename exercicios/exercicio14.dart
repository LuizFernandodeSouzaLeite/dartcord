void exercicio14 (){
  final mensagens = [
    'Bom dia',
    'Boa Dart',
    'Boa noite',
  ];

  for (final mensagem in mensagens) {
    if (mensagem.contains('Dart')) {
      print(mensagem);
    }
  }
}

/*void main (){
  exercicio14();
}*/