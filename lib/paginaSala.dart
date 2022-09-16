import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/taks.dart';
import './taks.dart';



class paginaSala extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Laboratório 1")),
        ),
        body: Container( 
          
            child:  
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    Icon(Icons.info_rounded),
                    Text ( 'Siga o caminho verde no chão para chegar ao local desejado.',
                    
                    overflow: TextOverflow.visible,
                    textScaleFactor: 1.5,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                   
                   
                    
                    
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset('assets/images/entrada.png', width: 500 ,),
                    ),
                    Image.asset('assets/images/sala1.png', width: 450 ,),
                    
                  ],
                 
                ),
              ),
            ),
          ),
        );
      }
}  



class paginaSala2 extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Laboratório 2")),
        ),
        body: Container( 
          
            child:  
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    Icon(Icons.info_rounded),
                    Center(
                      child: Text ( 'Siga o caminho verde no chão para chegar ao local desejado.',
                      
                      overflow: TextOverflow.visible,
                      textScaleFactor: 1.5,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                   
                   
                    
                    
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset('assets/images/entrada.png', width: 500 ,),
                    ),
                    Image.asset('assets/images/sala1.png', width: 450 ,),
                    
                  ],
                 
                ),
              ),
            ),
          ),
        );
      }
}


     //   width: 300,
                  //  height: 300,
                  //  color: Color.fromARGB(255, 179, 201, 202),
                 //  child:
                   //  Image.asset('assets/images/entrada.png', width: 50 ,),
                         //Arrumar essa parte do código
                      
                 // ),
      // );
               //   const Divider(
               //    height: 20,
               //    thickness: 5,
               //    indent: 0,
               //    endIndent: 0,
                 //  color: Colors.black,
                //   ),
               //   
               //   Container(
                //    child: Image.asset('assets/images/sala1.jpg', width: 150 ,),

                //  ),
                
            //*
 //     );
       
  //  }

//  }


