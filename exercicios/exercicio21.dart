import '../models/usuario.dart';
import '../models/moderador.dart';

void main() {
  List<Usuario> usuarios = [
    Usuario(nome: 'Luiz', apelido: 'Luizinho', online: true),
    Moderador(nome: 'Pedro', apelido: 'Admin', online: true),
  ];

  usuarios.first.advertir();
  print('Advertência: ${usuarios.first.advertencias}');

  for (final usuario in usuarios) {
    print('${usuario.apelido} - ${usuario.obterStatus()}');
  }

}