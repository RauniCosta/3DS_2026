class NomeInvalidoException implements Exception {

  @override
  String toString() {
    return 'Nome inválido! O nome do aluno não pode ser vazio.';
  }
}

