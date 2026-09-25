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
}