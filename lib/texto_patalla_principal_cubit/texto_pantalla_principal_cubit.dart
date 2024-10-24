// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'texto_pantalla_principal_state.dart';

class TextoPantallaPrincipalCubit extends Cubit<TextoPantallaPrincipalState> {
  TextoPantallaPrincipalCubit() : super(TextoPantallaPrincipalInitial());

  void actualizarNombre() {
    emit(TextoPantallPricipalMostrarRodrigo());

    Future.delayed(
      const Duration(seconds: 3),
      () {
        print('Se terminó de cargar');
        emit(TextoPantallaPrincipalInitial());
      },
    );
  }
}
