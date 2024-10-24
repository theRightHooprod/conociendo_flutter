// ignore_for_file: unused_element, avoid_print

// import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'texto_patalla_principal_cubit/texto_pantalla_principal_cubit.dart';

void main() {
  var textoPantallaPrincipalCubit = TextoPantallaPrincipalCubit();

  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocBuilder(
                bloc: textoPantallaPrincipalCubit,
                builder: (context, state) {
                  if (state is TextoPantallPricipalMostrarRodrigo) {
                    return const Text('Hola Mario');
                  }

                  return const Text('Hola Pedro');
                },
              ),
              IconButton(
                onPressed: () async {
                  textoPantallaPrincipalCubit.actualizarNombre();
                },
                icon: const Icon(Icons.replay_outlined),
              )
            ],
          ),
        ),
      ),
    ),
  );
}