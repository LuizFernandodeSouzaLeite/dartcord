import 'dart:io';
import 'exercicios/exercicio_final.dart';

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
