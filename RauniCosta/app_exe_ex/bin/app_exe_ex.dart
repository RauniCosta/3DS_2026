
import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Digite um numero:");
  var line = stdin.readLineSync(encoding:utf8);

  try {
     double num = double.parse(line ?? "");
     print("O numero digitado foi: $num");
  } catch (e) {
    print("Erro: Entrada invalida: $line Por favor, digite um numero valido.");
  } finally {
    print("Fim do programa.");
  }

  
}
