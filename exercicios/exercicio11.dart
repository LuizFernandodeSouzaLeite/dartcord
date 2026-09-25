void exercicio11(){
  final usuarios = <String, String>{
    'Pedro': 'online',
    'Thiago': 'offline',
    'João': 'online',
  };
  
  usuarios.forEach((nome, status) {
    print('$nome - $status');
  });
}

/*void main(){
  exercicio11();
}*/

//PEDRO, THIAGO, JOÃO NO BARQUINHO