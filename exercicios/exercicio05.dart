void exercicio05() {
  String nome = "Luiz";
  String apelido = "Luizinho";
  int idade = 20;
  bool online = true;

  print('Nome: $nome');
  print('Apelido: $apelido');
  print('Idade: $idade');
  print('Online: $online');

  print('$nome está ${obterStatus(online)}');
}

String obterStatus(bool online){
  if (online) {
    return 'online';
  }

  return 'offline';
}


//TESTANDO ARQUIVO POR ARQUIVO

/*void main(){
  exercicio05();
}*/