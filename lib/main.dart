import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'navigator_cubit/navigator_cubit.dart';
import 'screens/cow_detail_view.dart';
import 'screens/home.dart';

void main() {
  runApp(
    MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => NavigatorCubit(),
          ),
        ],
        child: BlocListener<NavigatorCubit, NavigatorMainState>(
          listenWhen: (previous, current) => current is NavigatorActionState,
          listener: (context, state) {
            if (state is NavigatorGoToDetailState) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.indigo,
                      iconTheme: const IconThemeData(
                        color: Colors.white,
                      ),
                      title: const Center(
                        child: Text(
                          'Cow Info',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    body: const CowDetailView(),
                  ),
                ),
              );
            }
          },
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.indigo,
              title: const Center(
                child: Text(
                  'Cow Info',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            body: const Home(),
          ),
        ),
      ),
    ),
  );
}
