import 'package:flutter/material.dart';
import 'package:flutter_dicas/widgets/flutter_dicas_inherited_widget.dart';

class FlutterDicasStatefulWidget extends StatefulWidget {
  const FlutterDicasStatefulWidget({super.key});

  @override
  State<StatefulWidget> createState() {
  return _FlutterDicasStatefulWidgetState();
  }
  
}

class _FlutterDicasStatefulWidgetState extends State<FlutterDicasStatefulWidget> {

 late  int contador; // late significa que a variávvel será inicada depois

  @override
  void initState() { // Quando o estado é iniciado, é o primeiro método a ser chamado
    contador = 0;
    super.initState();
  }

  @override
  void dispose(){ // Serve para enecerrar o cliclo de vida do widget
  }
  void _incrementarContador(){
    setState(() { // setState reconstroi e atualiza a tela
      contador++;
    });
  }
  void _decrementarContador(){
    setState(() {
      contador--;
    });
  }
  @override
  Widget build(BuildContext context) { // Implementa a contrução do statefull widget
  final dica = FlutterInheritedWidget.of(context)!.dica; // Quando o método é estático, não se deve insntanciá-lo
    return Scaffold(
      appBar: AppBar(
        title: Text('$dica: Stateful Widget'),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Tudo que for colocado na coluna vai para o centro da tela
          children: [
            const Text(
              'Eu sou um stateful widget', 
              style: TextStyle(fontSize: 24)
              ),
              Text('Contador: $contador', 
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                 fontSize: 40),
              ),
              ElevatedButton(
                onPressed: _incrementarContador,
                 child: const Text('Incrementar')
                 ),
              ElevatedButton(
                onPressed: _decrementarContador,
                  child: const Text('Decrementar')
              )
          ],
        )
      ), //.expand para expandir na largura  e a altura
    );
  }

}
