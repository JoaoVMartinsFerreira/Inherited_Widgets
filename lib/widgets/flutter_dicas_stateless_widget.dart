import 'package:flutter/material.dart';
import 'package:flutter_dicas/widgets/flutter_dicas_inherited_widget.dart';

class FlutterDicasStatelessWidget extends StatelessWidget{
  const FlutterDicasStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dica = FlutterInheritedWidget.of(context)!.dica;
    return Scaffold(
      appBar: AppBar(
        title: Text('$dica: Stateless Widget'),
      ),
      body: const Center(
        child: Text(
          'Eu sou um Stateless Widget',
          style: TextStyle(
            fontSize: 24,
          )
        ),
        ),
    );
  }

}