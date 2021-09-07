import 'package:flutter/material.dart';

import 'package:estados/bloc/usuario_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/models/usuario.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final usuarioBloc = BlocProvider.of<UsuarioBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                
                final newUser = new Usuario(
                  nombre: 'Fernando Herrera',
                  edad: 34,
                  profesiones: ['Fullstack Developer']
                );

                usuarioBloc.add( ActivarUsuario( newUser ) );
                // BlocProvider.of<UsuarioBloc>(context).add( 
                //   ActivarUsuario( newUser ) 
                // );

              }
            ),

            MaterialButton(
              child: Text('Cambiar Edad', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {

                usuarioBloc.add( CambiarEdad(30) );
                // BlocProvider.of<UsuarioBloc>(context).add( 
                //   CambiarEdad(30)
                // );
              }
            ),

            MaterialButton(
              child: Text('Añadir Profesion', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {

                usuarioBloc.add( AgregarProfesion('Nueva Profesion') );
              }
            ),

          ],
        )
     ),
   );
  }
}