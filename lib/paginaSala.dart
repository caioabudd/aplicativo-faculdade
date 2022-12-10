import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import './instrucoes.dart';

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
            textScaleFactor: 0.75,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            balls1(contagem),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Image.asset(
                  retornaImagem1(contagem), // Aqui retorna a imagem
                  width: 450,
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
                    contagem++;
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

  Widget balls1(int contagem) {
    return balls3(contagem);
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
            textScaleFactor: 0.85,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            balls1(contagem),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Image.asset(
                  retornaImagem1(contagem), // Aqui retorna a imagem
                  width: 450,
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
    if (contagem >= 3) {
      return 'assets/images/sala2.png';
    }
  }


  Widget balls1(int contagem) {

  if (contagem <= -1) {
    return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),

        ),
       
      ],
    ),
  );
  } if(contagem == 0){
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

       

        
      ],
    ),
  );
} if (contagem == 1) {
   return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

       
      ],
    ),
  );
} else {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),

              
        ),

        
      ],
    ),
  );

};
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
            textScaleFactor: 0.85,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            balls1(contagem),    // aqui chama o design das bolinhas para mostrar em qual imagem está
            
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Image.asset(
                  retornaImagem1(contagem), // Aqui retorna a imagem
                  width: 450,
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

Widget balls1(int contagem) {

  if (contagem <= -1) {
    return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),

        ),
        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );
  } if(contagem == 0){
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        
      ],
    ),
  );
} if (contagem == 1) {
   return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );
} if (contagem == 2) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),

              
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );

} else {
return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),

              
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
  ),
      ],
    ),
  );


};
}
}


//=============================================================sala04====================================================================(sala11)

class paginaSala4 extends StatefulWidget {
  const paginaSala4({super.key});

  @override
  State<paginaSala4> createState() => _paginaSala4State();
}

class _paginaSala4State extends State<paginaSala4> {
  int contagem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: (Color.fromARGB(255, 29, 1, 1)),
        title: Text(
            'Siga o caminho verde no chão para chegar ao local desejado.',
            overflow: TextOverflow.visible,
            textScaleFactor: 0.85,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            balls1(contagem),    // aqui chama o design das bolinhas para mostrar em qual imagem está
            
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Image.asset(
                  retornaImagem1(contagem), // Aqui retorna a imagem
                  width: 450,
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
      return 'assets/images/sala11.png';
    }
    if (contagem == 3) {
      return 'assets/images/sala111.png';
    }
    if (contagem <= 0) {
      return 'assets/images/entrada.png';
    }
    if (contagem >= 4) {
      return 'assets/images/sala111.png';
    }
  }

Widget balls1(int contagem) {

  if (contagem <= -1) {
    return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),

        ),
        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );
  } if(contagem == 0){
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        
      ],
    ),
  );
} if (contagem == 1) {
   return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );
} if (contagem == 2) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),

              
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );

} else {
return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),

              
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
  ),
      ],
    ),
  );


};
}
}

//========================================================sala05================================================================(sala 12)


class paginaSala5 extends StatefulWidget {
  const paginaSala5({super.key});

  @override
  State<paginaSala5> createState() => _paginaSala5State();
}

class _paginaSala5State extends State<paginaSala5> {
  int contagem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: (Color.fromARGB(255, 29, 1, 1)),
        title: Text(
            'Siga o caminho verde no chão para chegar ao local desejado.',
            overflow: TextOverflow.visible,
            textScaleFactor: 0.85,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            balls1(contagem),    // aqui chama o design das bolinhas para mostrar em qual imagem está
            
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Image.asset(
                  retornaImagem1(contagem), // Aqui retorna a imagem
                  width: 450,
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
      return 'assets/images/sala12Caminho.png';
    }
    if (contagem == 3) {
      return 'assets/images/sala12.png';
    }
    if (contagem <= 0) {
      return 'assets/images/entrada.png';
    }
    if (contagem >= 4) {
      return 'assets/images/sala12.png';
    }
  }

Widget balls1(int contagem) {

  if (contagem <= -1) {
    return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),

        ),
        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );
  } if(contagem == 0){
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        
      ],
    ),
  );
} if (contagem == 1) {
   return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );
} if (contagem == 2) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),

              
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );

} else {
return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),

              
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
  ),
      ],
    ),
  );


};
}
}

//===============================================================Sala6====================================================(Sala 13)

class paginaSala6 extends StatefulWidget {
  const paginaSala6({super.key});

  @override
  State<paginaSala6> createState() => _paginaSala6State();
}

class _paginaSala6State extends State<paginaSala6> {
  int contagem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: (Color.fromARGB(255, 29, 1, 1)),
        title: Text(
            'Siga o caminho verde no chão para chegar ao local desejado.',
            overflow: TextOverflow.visible,
            textScaleFactor: 0.85,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            balls1(contagem),    // aqui chama o design das bolinhas para mostrar em qual imagem está
            
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Image.asset(
                  retornaImagem1(contagem), // Aqui retorna a imagem
                  width: 450,
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
      return 'assets/images/sala12Caminho.png';
    }
    if (contagem == 3) {
      return 'assets/images/sala13.png';
    }
    if (contagem <= 0) {
      return 'assets/images/entrada.png';
    }
    if (contagem >= 4) {
      return 'assets/images/sala13.png';
    }
  }

Widget balls1(int contagem) {

  if (contagem <= -1) {
    return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),

        ),
        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );
  } if(contagem == 0){
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        
      ],
    ),
  );
} if (contagem == 1) {
   return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );
} if (contagem == 2) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),

              
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );

} else {
return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),

              
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
  ),
      ],
    ),
  );


};
}
}


//========================================================sala07================================================================(Lab informática 3)


class paginaSala7 extends StatefulWidget {
  const paginaSala7({super.key});

  @override
  State<paginaSala7> createState() => _paginaSala7State();
}

class _paginaSala7State extends State<paginaSala7> {
  int contagem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: (Color.fromARGB(255, 29, 1, 1)),
        title: Text(
            'Siga o caminho verde no chão para chegar ao local desejado.',
            overflow: TextOverflow.visible,
            textScaleFactor: 0.85,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            balls1(contagem),    // aqui chama o design das bolinhas para mostrar em qual imagem está
            
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Image.asset(
                  retornaImagem1(contagem), // Aqui retorna a imagem
                  width: 450,
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
      return 'assets/images/sala12Caminho.png';
    }
    if (contagem == 3) {
      return 'assets/images/labInformatica3.png';
    }
    if (contagem <= 0) {
      return 'assets/images/entrada.png';
    }
    if (contagem >= 4) {
      return 'assets/images/labInformatica3.png';
    }
  }

Widget balls1(int contagem) {

  if (contagem <= -1) {
    return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),

        ),
        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );
  } if(contagem == 0){
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        
      ],
    ),
  );
} if (contagem == 1) {
   return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );
} if (contagem == 2) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),

              
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );

} else {
return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),

              
        ),

        Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
  ),
      ],
    ),
  );


};
}
}

//========================================================Coodernação================================================================(Coord. de exatas)


class salaCoodernacao extends StatefulWidget {
  const salaCoodernacao({super.key});

  @override
  State<salaCoodernacao> createState() => _salaCoodernacaoState();
}

class _salaCoodernacaoState extends State<salaCoodernacao> {
  int contagem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: (Color.fromARGB(255, 29, 1, 1)),
        title: Text(
            'Siga o caminho verde no chão para chegar ao local desejado.',
            overflow: TextOverflow.visible,
            textScaleFactor: 0.85,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            balls1(contagem),    // aqui chama o design das bolinhas para mostrar em qual imagem está
            
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: Image.asset(
                  retornaImagem1(contagem), // Aqui retorna a imagem
                  width: 450,
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
      return 'assets/images/coor.png';
    }
    if (contagem == 1) {
      return 'assets/images/coor2.png';
    }
    if (contagem <= 0) {
      return 'assets/images/coor.png';
    }
    if (contagem >= 1) {
      return 'assets/images/coor2.png';
    }
  }

Widget balls1(int contagem) {

  if (contagem <= -1) {
    return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),
      ],
    ),
  );
  } if(contagem == 0){
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

        
      ],
    ),
  );
} if (contagem == 1) {
   return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

      ],
    ),
  );
}if (contagem >= 1) {
   return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

      ],
    ),
  );
} else {
return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black),
        ),

          Container(
          margin: EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Color.fromARGB(255, 39, 109, 238)),
        ),

    
      ],
    ),
  );


};
}
}