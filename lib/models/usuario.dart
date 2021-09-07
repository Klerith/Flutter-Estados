

class Usuario {
  
  final String nombre;
  final int edad;
  final List<String> profesiones;

  Usuario({ required this.nombre, required this.edad, required this.profesiones });


  copyWith({
    String? nombre,
    int? edad,
    List<String>? profesiones,
  }) => new Usuario(
    nombre: nombre ?? this.nombre, 
    edad: edad ?? this.edad, 
    profesiones: profesiones ?? this.profesiones
  );

}