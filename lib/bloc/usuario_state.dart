part of 'usuario_bloc.dart';


class UsuarioState {
  final bool existeUsuario;
  final Usuario? usuario;

  UsuarioState({ Usuario? user })
    : usuario = user ?? null,
      existeUsuario = ( user != null ) ? true : false;

  UsuarioState copyWith({
    Usuario? usuario,
  }) => UsuarioState(
    user: usuario ?? this.usuario
  );

  UsuarioState estadoInicial() => new UsuarioState();

}
