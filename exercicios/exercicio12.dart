void exercicio12() {
  final usuarios = <String, String>{
    'Pedro': 'online',
    'Thiago': 'online',
    'João': 'offline',
  };

  usuarios.forEach((nome, status) {
    if (status == 'online') {
      print(nome);
    }
  });
}

/*void main(){
  exercicio12();
}*/