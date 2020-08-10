import 'package:meta/meta.dart';

class Usuario {
  
  String nombre;
  int edad;
  List<String> profesiones;

  Usuario({ @required this.nombre, this.edad, this.profesiones })
  : assert( nombre != null);

}