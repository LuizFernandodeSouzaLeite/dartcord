abstract class Conteudo {
  void exibir();
}

class Aviso extends Conteudo {
  final String texto;

  Aviso(this.texto);

  @override
  void exibir() {
    print('[AVISO] $texto');
  }
}