import 'dart:io';
import 'dart:math';

 /*Solicita al usuario un número y eleva este número al cuadrado 
    solo si es positivo*/
class Challenge1 {
  void run() {
    print("POTENCIA POSITIVA");
    print("Digite un número");
    int? numero = int.tryParse(stdin.readLineSync()!);

    if (numero != null) {
      if (numero >= 0) {
        int resultado = numero * numero;
        print("El número $numero elevado al cuadrado es $resultado");
      } else {
        print("El número es negativo");
      }
    } else {
      print("Ingresa un número válido.");
    }
  }
}

/* Solicita al usuario dos números. Si el primero es mayor, devuelva 
    su doble, de lo contrario devuelva el triple del segundo.*/ 
class Challenge2 {
  void run() {
    print("--> DOBLE O TRIPLE");
    print("Ingrese un número");
    int? Num1 = int.tryParse(stdin.readLineSync()!);
    print("Ingrese otro número");
    int? Num2 = int.tryParse(stdin.readLineSync()!);

    if (Num1 != null && Num2 != null) {
      int resultado = Num1 > Num2 ? Num1 * 2 : Num2 * 3;
      print("Resultado: $resultado");
    } else {
      print("Ingresa números válidos.");
    }
  }
}

 /*Pide al usuario un número. Si es positivo, devuelve su raíz
    cuadrada, de lo contrario, devuelve su cuadrado */
class Challenge3 {
  void run() {
    print("--> RAÍ O CUADRADO");
    print("Digite un número");
    String? input = stdin.readLineSync();
    if (input != null) {
      double numero3 = double.tryParse(input) ?? 0;
      if (numero3 > 0) {
        double resultado = sqrt(numero3);
        print("La raiz cuadrada del número $numero3 es $resultado");
      } else if (numero3 <= 0) {
        double resultado = numero3 * numero3;
        print("El número $numero3 elevado al cuadrado es $resultado");
      } else {
        print("Ingresa un número válido.");
      }
    }
  }
}

 /*Pide al usuario el radio de un círculo y calcula su perímetro.*/
class Challenge4 {
  void run() {
    print("--> PERÍMETRO DEL CÍRCULO");
    print("Ingrese el radio de la circunferencia");
    double? radio = double.tryParse(stdin.readLineSync()!);

    if (radio != null) {
      double perimetro = pi * radio * 2;
      print("El perímetro es: $perimetro");
    } else {
      print("Por favor, ingrese un radio válido.");
    }
  }
}

 /*Solicita al usuario un número entre 1 y 7 y muestra el día de la 
  semana correspondiente, pero solo considerando los días laborables*/ 
class Challenge5 {
  void run() {
    print("--> DÍAS LABORALES");
    print("Ingresa un número del 1 al 7");
    int? dia = int.tryParse(stdin.readLineSync()!);
      switch (dia) {
        case 1:print("Lunes");break;
        case 2: print("Martes"); break;
        case 3: print("Miércoles"); break;
        case 4: print("Jueves"); break;
        case 5: print("Viernes"); break;
        default: print("Número fuera del rango laboral"); break;
      }
    
  }
}

  /*Solicita al usuario su salario anual y, si este excede los 12000, 
    muestra el impuesto a pagar que es el 15% del excedente. */ 
class Challenge6 {
  void run() {
    print("--> CALCULAR IMPUESTOS");
    print("Ingrese su salario anual");
    double? salario = double.tryParse(stdin.readLineSync()!);
    double impuesto = salario! > 12000 ? 0.15 * (salario - 12000) : 0;
      print("El impuesto a pagar es: $impuesto");
    
  }
}

    /*: Solicita dos números y muestra el residuo de la división del 
    primero entre el segundo. */
class Challenge7 {
  void run() {
    print("--> RESIDUO DE UNA DIVISIÓN");
    try {
      print("Ingresar número a dividir");
      double? dividendo = double.tryParse(stdin.readLineSync()!);
      print("Ingresar el divisor");
      double? divisor = double.tryParse(stdin.readLineSync()!);

      if (dividendo != null && divisor != null) {
        if (divisor != 0) {
          print("El residuo de la división es: ${dividendo % divisor}");
        } else {
          print("No se puede dividir por cero");
        }
      } else {
        print("Error al ingresar los números");
      }
    } catch (e) {
      print("Error al realizar operación");
    }
  }
}


/*Calcula y muestra la suma de los números pares entre 1 y 50. */
class Challenge8 {
  void run() {
    print("--> SUMA DE NÚMEROS PARES");
    int suma = 0;
    for (int i = 2; i <= 50; i += 2) {
      suma += i;
    }

    print("La suma de los números pares entre 1 y 50 es: $suma");
  }
}

class Challenge9 {
  void run() {
     try {
    print("Ingrese el numerador de la primera fracción:");
    int? numerador1 = int.tryParse(stdin.readLineSync()!);

    print("Ingrese el denominador de la primera fracción:");
    int? denominador1 = int.tryParse(stdin.readLineSync()!);

    print("Ingrese el numerador de la segunda fracción:");
    int? numerador2 = int.tryParse(stdin.readLineSync()!);

    print("Ingrese el denominador de la segunda fracción:");
    int? denominador2 = int.tryParse(stdin.readLineSync()!);

    if (numerador1 != null && denominador1 != null && numerador2 != null && denominador2 != null) {
      if (denominador1 != 0 && denominador2 != 0) {
        int resultadoNumerador = (numerador1 * denominador2) - (numerador2 * denominador1);
        int resultadoDenominador = denominador1 * denominador2;

        print("La diferencia entre las fracciones es: $resultadoNumerador/$resultadoDenominador");
      } else {
        throw Exception("El denominador no puede ser cero.");
      }
    } else {
      throw Exception("Por favor, ingrese valores numéricos válidos.");
    }
  } catch (e) {
    print("Error: ${e.toString()}");
  }
}
}

 /*Pide una palabra al usuario y muestra la longitud de esa palabra.*/
class Challenge10 {
  void run() {
    print("--> LONGITUD DE CADENAS");
    print("Ingrese una palabra:");
    String? palabra = stdin.readLineSync();
    int longitud = palabra?.length ?? 0;
    print("La longitud de la palabra '$palabra' es: $longitud");
  }
}

/* Pide al usuario cuatro números y muestra el promedio.*/
class Challenge11 {
  void run() {
    print("--> PROMEDIO DE CUATRO NÚMEROS");
    print("Digite el primer numero");

    print("Introduce el primer número:");
    double numA = double.parse(stdin.readLineSync()!);
    print("Introduce el segundo número:");
    double numB = double.parse(stdin.readLineSync()!);
    print("Introduce el tercer número:");
    double numC = double.parse(stdin.readLineSync()!);
    print("Introduce el tercer número:");
    double numD = double.parse(stdin.readLineSync()!);
    double promedio = (numA + numB + numC + numD) / 4;
    print("El promedio de los cuatro números es: $promedio");
  }
}

  /*Pide al usuario cinco números y muestra el más pequeño. */
class Challenge12 {
   void run() {
    List<int> numeros = [];
    for (int i = 0; i < 5; i++) {
      print("Introduce el número ${i + 1}:");
      numeros.add(int.parse(stdin.readLineSync()!));
    }
    print("El número más pequeño de la lista es: ${numeros.reduce(min)}");
  }
}

 /*Pide una palabra al usuario y devuelve el número de vocales en esa palabra*/

class Challenge13 {
  void run() {
    print("--> CONTADOR DE VOCALES");
    print("Por favor, ingresa una palabra:");
    String? text = stdin.readLineSync()?.toLowerCase();
    int contadorVocales = 0;

    if (text != null) {
      for (int i = 0; i < text.length; i++) {
        if ("aeiou".contains(text[i])) {
          contadorVocales++;
        }
      }

      print("El número de vocales en la palabra '$text' es: $contadorVocales");
    }
  }
}

 /*Pide un número al usuario y devuelve el factorial de ese número.*/
 
class Challenge14 {
  void run() {
    print("--> CALCULAR FACTORIAL");
  int n, cont, fact;
  print("Digite el valor de n!: ");
  n = int.parse(stdin.readLineSync()!);

  if (n == 0) {
    print("El factorial de (0) es 1");
  } else {
    fact = n;
    for (cont = n; cont > 1; cont--) {
      fact = fact * (cont - 1);
    }
    print("El factorial de $n es: $fact");
  }
}
}

/*Pide un número al usuario y verifica si está en el rango de 10 a 20 (ambos incluidos). */
class Challenge15 {
  void run() {
    print("--> VALIDADOR DE RANGO");
    int numeroRango = int.parse(stdin.readLineSync()!);
    if (numeroRango >= 10 && numeroRango <= 20) {
      print("Resultado: Está en el rango.");
    } else {
      print("Resultado: Fuera del rango.");
    }
  }
}
