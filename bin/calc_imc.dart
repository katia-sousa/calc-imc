import 'dart:convert';
import 'dart:io';

//teste
void main(List<String> arguments) {
  print("informe sua altura por favor:");
  var line = stdin.readLineSync(encoding: utf8);
  var altura = double.parse(line ??
      "0"); //codigo simplificado tem o mesmo significado do codigo da linha 15

  print("informe seu peso por favor:");
  line = stdin.readLineSync(
      encoding: utf8); //Faz a leitura do que digitar no console
  // ignore: prefer_if_null_operators
  var peso = double.parse(line == null ? "0" : line);

  var imc = peso / (altura * altura);
  if (imc < 16) {
    print("Você está abaixo do peso * ATENÇÃO: MAGREZA GRAVE: $imc");
    imc;
  } else if (imc <= 17) {
    print("Você está moderadamente abaixo do peso  *MAGREZA MODERADA: $imc");
  } else if (imc <= 18.5) {
    print("Você está abaixo do peso *MAGREZA LEVE: $imc");
  } else if (imc <= 25) {
    print("Parabéns você está saudável: $imc");
  } else if (imc <= 30) {
    print("Atenção Sobrepeso: $imc");
  } else if (imc <= 35) {
    print("Atenção Obesidade Grau I: $imc");
  } else if (imc <= 40) {
    print("Atenção Obesidade Grau II (severa): $imc");
  } else {
    print("Atenção Obesidade Grau III(mórbida): $imc");

    // var resultado = (prova1 >= 7) ? "Aluno aprovado" : "Aluno reprovado";
    // print(resultado);
  }
}
