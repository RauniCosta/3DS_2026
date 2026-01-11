class Aluno {

  String _nome = "";
  List<double> _notas = [];

  Aluno(String nome) {
    _nome = nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }
  
  String getNome() {
    return _nome;
  }

  List<double> getNotas() {
    return _notas;
  }
  void adicionarNota(double nota) {
    _notas.add(nota);
  }
  
  double calcularMedia() {
    double soma = 0;
    for (double nota in _notas) {
      soma += nota;
    }
    var media = soma / _notas.length;

    return media.isNaN ? 0 : media;

  }

  bool aprovado(double media) {
    return media >= 7.0;
  }

  
}
