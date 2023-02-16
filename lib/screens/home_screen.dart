import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
@override
State<HomeScreen> createState() => _HomeScreenState();
}
  
class _HomeScreenState extends State<HomeScreen> {
  int contador =0;
  final TextStyle estiloTexto = const TextStyle(
    fontSize: 30,
    color: Colors.blueGrey,
    fontWeight: FontWeight.bold, 
      );
            
  @override
  Widget build(BuildContext context) {
    int contador=0;
     return Scaffold(
      appBar:  AppBar( //Barra de arriba de la app
        title: const Text('Counter App'),
        centerTitle: true, //Centra el texto de la barra 
        elevation: 10, //sombra de la barra 
         backgroundColor: const Color.fromARGB(10, 15, 12,14),
      ),
      backgroundColor: const Color.fromARGB(10, 15, 12,14),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //agarra la columna y la centra toda
          children: [
             Text(
              'Numero de Taps:',
              style: estiloTexto,
              ),
            Text('$contador',
            style: estiloTexto,
            ),
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     floatingActionButton: Row(
       children: [
         FloatingActionButton( //Widget y propiedad del boton
          onPressed: () {
            setState((){
              contador--;
        });
            },
            backgroundColor: const Color.fromARGB(255, 3, 21, 52),
            foregroundColor: const Color.fromARGB(255, 250, 15, 78),
            child: const Icon(Icons.exposure_minus_1),
            ),
      ],
     ),      
      );
    } 
  }   