import 'package:flutter/material.dart';
import 'package:projeto_2/screens/tela_inicial.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFc67c9d),
        title: const Text("Favoritos"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
      ),
       
      body: ListView(
        children: [
          card1(),
        ],
      ),
    );
  }
}
  


//eu
Widget card1() => Card(
      clipBehavior: Clip.antiAlias,
      color: Color.fromARGB(255, 231, 180, 203),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16).copyWith(bottom: 0),
                child: Text(
                  'Rotina para o bebê é importante?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16).copyWith(bottom: 0),
            child: Text(
              '            A rotina do bebê é super importante, pois ajuda no desenvolvimento integral do seu filho. Pra começar, porque a previsibilidade ajuda os bebês a entenderem o que vai acontecer em seguida e esperarem por isso. Dessa forma, eles se sentem mais seguros, o que contribui para o desenvolvimento emocional. Por fim, uma criança que tem uma rotina bem definida geralmente possui maior autocontrole e menor propensão a birras. Isso porque ela passa a entender as transições – por exemplo, depois de brincar, é hora de comer; depois de tomar banho, é hora de dormir.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.justify,
            ),
          ),
          // ButtonBar(
          //   alignment: MainAxisAlignment.center,
          //   children: [
          //     TextButton(
          //         child: Text('Adicionar aos favoritos'),
          //         style: TextButton.styleFrom(
          //           primary: Colors.black,
          //           backgroundColor: Color(0xff59e7af),
          //         ),
          //         onPressed: () {}),
          //   ],
          // ),
        ],
      ),
    );