class Usuario {
  final String nome;
  final String apelido;
  bool online;


  Usuario({
    required this.nome,
    required this.apelido,
    this.online = false,
  });

  String obterStatus() {
    return online ? 'online' : 'offline';
  }

  int _advertencias = 0;

  int get advertencias => _advertencias;

  void advertir() {
    _advertencias++;
  }
}