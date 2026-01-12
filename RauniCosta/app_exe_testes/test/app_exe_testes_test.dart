

import 'package:app_exe_testes/app_exe_testes.dart' as app_exe_testes;
import 'package:test/test.dart';

void main() {

// Testes para a função calcularDesconto
  test('Calcula o desconto do produto sem percentual', (){
    double resultado = app_exe_testes.calcularDesconto(200.0, 50.0, false);
    expect(resultado, 150.0);
  });

// Testes para a função calcularDesconto com tratar valor zero e mensagem de erro
   test('Verificar o valor zero do produto', (){
    expect(() =>app_exe_testes.calcularDesconto(0.0, 50.0, false), 
      throwsA(TypeMatcher<ArgumentError>()) );
    //
  });

  test('Calcula o desconto do produto com percentual', (){
    double resultado = app_exe_testes.calcularDesconto(200.0, 10.0, true);
    expect(resultado, 180.0); 
  });

// Testes para a função calcularDesconto com tratar valor zero do desconto e mensagem de erro
  test('Verificar o valor zero do desconto', (){
    expect(() =>app_exe_testes.calcularDesconto(200.0, 0.0, false), 
      throwsA(TypeMatcher<ArgumentError>()) );
    //
  }
  ); 


// Testes para a função convertToUpper
  test('Converter texto para maiúsculo', (){
    expect(app_exe_testes.convertToUpper("rauni"),
    equals("RAUNI")
    );
  });

// Testes para a função convertToUpper ignorando maiúsculas e minúsculas
  test('Converter texto para maiúsculo', (){
    expect(app_exe_testes.convertToUpper("rauni"),
    equalsIgnoringCase("Rauni")
    );
  });



// Testes para a função returnavalor
  test('Retornar valor maior 10', (){
    expect(app_exe_testes.returnavalor(),
    equals(10)
    );
  }); 
// Testes para a função returnavalor maior ou igual a utilizando matcher greaterThanOrEqualTo

  test('Retornar valor maior 10', (){
    expect(app_exe_testes.returnavalor(),
    greaterThanOrEqualTo(0)
    );
  }); 

// Grupo de Testes para a função calcularDesconto
  group('Calcula o valor do produto com desconto', (){
    
    var valuesToTest = {
      {'valor':300, 'desconto': 50, 'percentual':false}: 250,
      {'valor':300, 'desconto': 100, 'percentual':false}: 200,
      {'valor':300, 'desconto': 10, 'percentual':true}: 290,
    };

    valuesToTest.forEach((values, expected) {
      
      test('Entrada: $values, Esperado: $expected',(){
        expect(
          app_exe_testes.calcularDesconto(
            double.parse(values ["valor"].toString()),
            double.parse(values ["desconto"].toString()),
            values ["percentual"] == 'true'
          ),
          equals( expected)
        );
      });
      
    });
  });


  //Fim main
  }