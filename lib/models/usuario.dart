

class Usuario {
  
  final String nombre;
  final int edad;
  final List<String> profesiones;

  Usuario({ required this.nombre, required this.edad, required this.profesiones });


  Usuario copyWith({ 
    String? nombre, 
    int? edad, 
    List<String>? profesiones 
  }) =>
    Usuario(
    nombre: nombre ?? this.nombre,
    edad  : edad ?? this.edad,
    profesiones: profesiones ?? this.profesiones,
  );


}