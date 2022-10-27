import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class paginaSala1 extends StatefulWidget {
  const paginaSala1({super.key});

  @override
  State<paginaSala1> createState() => _paginaSala1State();
}

class _paginaSala1State extends State<paginaSala1> {
  int contagem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: (Color.fromARGB(255, 29, 1, 1)),
        title: Text(
            'Siga o caminho verde no chão para chegar ao local desejado.',
            overflow: TextOverflow.visible,
            textScaleFactor: 0.95,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
           
            Container(
             
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                
                             
                             color: Color.fromARGB(255, 54, 136, 244)
                           ),
              margin: const EdgeInsets.all(10.0),
              
              width: 100.0,
              height: 50.0,
              child: Center(
                child: Text(retornaTexto1(contagem),
                    
                    textScaleFactor: 1,
                    style: const TextStyle(fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                    )
                    ),
              ),
            
            ),
            
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),

      child: 
            Padding(
              padding: EdgeInsets.symmetric(vertical: 60),
              child: Image.asset(
                retornaImagem1(contagem), // Aqui retorna a imagem
                width: 600,
              ),
            ),
            ),
            _setas(),
            
          ],
        ),
      ),
    );
  }

  Widget _setas() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: IconButton(
                icon: Icon(Icons.arrow_circle_left_rounded),
                iconSize: 50,
                onPressed: () {
                  setState(() {
                    contagem--;
                  });
                }),
          ),
          Container(
            child: IconButton(
                icon: Icon(Icons.arrow_circle_right_rounded),
                iconSize: 50,
                onPressed: () {
                  setState(() {

                    
                      contagem ++;

                     
                   
                    
                  });
                }),
          ),
        ],
      ),
    );
  }

  retornaImagem1(int contagem) {

int valorCerto; 


    if (contagem == 0) {
      return 'assets/images/entrada.png';
    }
    if (contagem == 1) {
      return 'assets/images/escada_sala1.png';
    }
    if (contagem == 2) {
      return 'assets/images/sala1.png';
    }
    if (contagem <= 0) {
      return 'assets/images/entrada.png';
    }
     if (contagem >= 2) {


      return 'assets/images/sala1.png';
    }
  }






  retornaTexto1(int contagem) {
    String Imagem1;
    String Imagem2;
    

    

    if (contagem == 0) {
      Imagem1 = 'Imagem 1';

      return Imagem1;
    }
    if (contagem == 1) {
      return 'Imagem 2';
    }
    if (contagem <= -1) {
      return 'Imagem 1';
    }
    if (contagem == 2) {
      return 'Imagem 3';
    }
    if (contagem >= 3) {

      return 'Imagem 3';
    }
  }
}

// =========================================SALA 2=======================================================================



class paginaSala2 extends StatefulWidget {
  const paginaSala2({super.key});

  @override
  State<paginaSala2> createState() => _paginaSala2State();
}

class _paginaSala2State extends State<paginaSala2> {

int contagem = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: (Color.fromARGB(255, 29, 1, 1)),
        title: Text(
            'Siga o caminho verde no chão para chegar ao local desejado.',
            overflow: TextOverflow.visible,
            textScaleFactor: 0.95,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text(retornaTexto1(contagem),
                textScaleFactor: 1,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 60),
              child: Image.asset(
                retornaImagem1(contagem), // Aqui retorna a imagem
                width: 600,
              ),
            ),
            _setas(),
          ],
        ),
      ),
    );
  }

  Widget _setas() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: IconButton(
                icon: Icon(Icons.arrow_circle_left_rounded),
                iconSize: 50,
                onPressed: () {
                  setState(() {
                    contagem--;
                  });
                }),
          ),
          Container(
            child: IconButton(
                icon: Icon(Icons.arrow_circle_right_rounded),
                iconSize: 50,
                onPressed: () {
                  setState(() {
                    contagem++;
                  });
                }),
          ),
        ],
      ),
    );
  }

  retornaImagem1(int contagem) {
    // Retorna as imagens
    if (contagem == 0) {
      return 'assets/images/entrada.png';
    }
    if (contagem == 1) {
      return 'assets/images/escada_sala1.png';
    }
    if (contagem == 2) {
      return 'assets/images/sala2.png';
    }
    if (contagem <= 0) {
      return 'assets/images/entrada.png';
    }
    if (contagem <= 3) {
      return 'assets/images/sala2.png';
    }
  }

  retornaTexto1(int contagem) {
    String Imagem1;
    String Imagem2;

    if (contagem == 0) {
      Imagem1 = 'Imagem 1';

      return Imagem1;
    }
    if (contagem == 1) {
      return 'Imagem 2';
    }
    if (contagem <= -1) {
      return 'Imagem 1';
    }
    if (contagem == 2) {
      return 'Imagem 3';
    }
    if (contagem >= 3) {
      return 'Imagem 3';
    }
  }
}

//==========================================================SALA 3 ================================================================ (sala 10)



class paginaSala3 extends StatefulWidget {
  const paginaSala3({super.key});

  @override
  State<paginaSala3> createState() => _paginaSala3State();
}

class _paginaSala3State extends State<paginaSala3> {
  int contagem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: (Color.fromARGB(255, 29, 1, 1)),
        title: Text(
            'Siga o caminho verde no chão para chegar ao local desejado.',
            overflow: TextOverflow.visible,
            textScaleFactor: 0.95,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text(retornaTexto1(contagem),
                textScaleFactor: 1,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 60),
              child: Image.asset(
                retornaImagem1(contagem), // Aqui retorna a imagem
                width: 600,
              ),
            ),
            _setas(),
          ],
        ),
      ),
    );
  }

  Widget _setas() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: IconButton(
                icon: Icon(Icons.arrow_circle_left_rounded),
                iconSize: 50,
                onPressed: () {
                  setState(() {
                    contagem--;
                  });
                }),
          ),
          Container(
            child: IconButton(
                icon: Icon(Icons.arrow_circle_right_rounded),
                iconSize: 50,
                onPressed: () {
                  setState(() {
                    contagem++;
                  });
                }),
          ),
        ],
      ),
    );
  }

  retornaImagem1(int contagem) {
    if (contagem == 0) {
      return 'assets/images/entrada.png';
    }
    if (contagem == 1) {
      return 'assets/images/escada_sala1.png';
    }
    if (contagem == 2) {
      return 'assets/images/caminhosala3.png';
    }
    if (contagem == 3) {
      return 'assets/images/sala3.png';
    }
    if (contagem <= 0) {
      return 'assets/images/entrada.png';
    }
    if (contagem >= 4) {
      return 'assets/images/sala3.png';
    }
  }

  retornaTexto1(int contagem) {
    String Imagem1;
    String Imagem2;

    if (contagem == 0) {
      Imagem1 = 'Imagem 1';

      return Imagem1;
    }
    if (contagem == 1) {
      return 'Imagem 2';
    }
    if (contagem <= -1) {
      return 'Imagem 1';
    }
    if (contagem == 2) {
      return 'Imagem 3';
    }
    if (contagem == 3) {
      return 'Imagem 4';
    }
    if (contagem >= 4) {
      return 'Imagem 4';
    }
  }
}




