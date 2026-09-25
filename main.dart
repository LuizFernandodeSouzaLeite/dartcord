import 'dart:io';

import 'models/usuario.dart';
import 'models/moderador.dart';
import 'models/mensagem.dart';
import 'models/canal.dart';
import 'models/conteudo.dart';

void main() {
  int opcao = -1;

  while (opcao != 0) {
    print('\nDARTCORD');
    print('1 - Criar usuário');
    print('2 - Verificar status');
    print('3 - Relatório do servidor');
    print('0 - Sair');
    stdout.write('Escolha uma opção: ');

    opcao = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    switch (opcao) {
      case 1:
        print('Criando usuário...');
        break;
      case 2:
        print('Verificando status...');
        break;
      case 3:
        gerarRelatorio();
        break;
      case 0:
        print('Encerrando DartCord...');
        break;
      default:
        print('Opção inválida.');
    }
  }
}

void gerarRelatorio() {
  final usuario = Usuario(nome: 'Pedro', apelido: 'PG', online: true);
  final moderadora = Moderador(nome: 'Ana', apelido: 'Ana', online: true);
  final usuarios = <Usuario>[usuario, moderadora];

  final geral = Canal(nome: 'geral');
  final canalDart = Canal(nome: 'dart');
  final flutter = Canal(nome: 'flutter');
  final canais = <Canal>[geral, canalDart, flutter];

  canalDart.adicionarMensagem(
    Mensagem(autor: usuario, texto: 'Olá, DartCord!'),
  );
  canalDart.adicionarMensagem(
    Mensagem(autor: moderadora, texto: 'Continuem praticando.'),
  );

  print('\nDARTCORD');
  print('Servidor: Programação Mobile');

  print('Usuários online:');
  for (final pessoa in usuarios) {
    if (pessoa.online) {
      print(pessoa.apelido);
    }
  }

  print('Canais:');
  for (final canal in canais) {
    print('#${canal.nome}');
  }

  print('Exibindo mensagens do canal:');
  print('#${canalDart.nome}');
  for (final mensagem in canalDart.mensagens) {
    print('${mensagem.autor.apelido}: ${mensagem.texto}');
  }

  Conteudo aviso = Aviso('Relatório gerado.');
  aviso.exibir();
}