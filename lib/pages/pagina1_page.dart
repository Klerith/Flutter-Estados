import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        actions: [
          IconButton(
            icon: Icon( Icons.exit_to_app ), 
            onPressed: () => usuarioService.removerUsuario()
          )
        ],
      ),
      body: usuarioService.existeUsuario
       ? InformacionUsuario( usuarioService.usuario! )
       : Center( child: Text('No hay usuario seleccionado') ),

     floatingActionButton: FloatingActionButton(
       child: Icon( Icons.accessibility_new ),
       onPressed: () => Navigator.pushNamed(context, 'pagina2')
     ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {

  final Usuario usuario;

  const InformacionUsuario( this.usuario );


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text('General', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ) ),
          Divider(),

          ListTile( title: Text('Nombre: ${ usuario.nombre }') ),
          ListTile( title: Text('Edad: ${ usuario.edad }') ),

          Text('Profesiones', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold ) ),
          Divider(),

          ...usuario.profesiones.map(
            (profesion) => ListTile( title: Text( profesion ) )
          ).toList()
          // ListTile( title: Text('Profesion 1') ),

        ],
      ),
    );
  }

}