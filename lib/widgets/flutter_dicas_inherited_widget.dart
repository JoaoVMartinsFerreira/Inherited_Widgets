import 'package:flutter/material.dart';


class FlutterInheritedWidget extends InheritedWidget{
  const FlutterInheritedWidget({super.key, required super.child}); // construtor

  final String dica = "Flutter Inherited WIdget" ; // Os outros widget deverão ter acesso a essa variável

  static FlutterInheritedWidget? of(BuildContext context){ // Localiza no widget tree onde está a instância criada do FlutterInheritedWidget (Localiza através do context)
    return context
    .dependOnInheritedWidgetOfExactType<FlutterInheritedWidget>(); // Essa função o inherioted widget através do método "of"

  }
  
  @override                                                      // Deve notificar para atualizar
  bool updateShouldNotify(covariant InheritedWidget oldWidget) { // sempre que houver uma atualização no widget, 
                                                                      // retorna true ou false para se quiser atualizar o wdget
    return false;
  }
  
}