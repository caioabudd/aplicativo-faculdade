
import 'package:flutter_application_1/paginaSala.dart';
import 'package:flutter_application_1/salas.dart';


class Funcoes {

//Função para redirecionar
redirecionar(dynamic index) {
  if (index == 0) {      // sala 1
    return 'sala1';
  }
  if (index == 1) {
    return 'sala2';       // sala 2
  }
  ; 
 }


//FUNÇÃO PARA TORNAR O STRING UM INT
mudaResultado(dynamic result, int index) {
  if (result == "Laboratório Multidisciplinar 1 ") {
    index = 0;
    return redirecionar(index);
  }
  if (result == "Laboratório Multidisciplinar 2 ") {
    index = 1;
    return redirecionar(index);
  }
  if (result == "Sala 10 ") {
    
    index = 3;
    return redirecionar(index);
  } else {
    return redirecionar(index);
  }
  ;
}

// FUNÇÃO NÃO DEU CERTO
verificaResultado(result, index) {
  if (result == "Laboratorio Multidisciplinar 1 ") {
    index = 0;
    return index;
  } else {
    return index;
  }
}


mudaSala(index) {      //redirecionar as salas certas
  if (index == 0) {
    

    return redirecionar(index);

  } else { 

    return null;
  }


}




}





