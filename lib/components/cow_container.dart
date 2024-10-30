import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../navigator_cubit/navigator_cubit.dart';


class CowContainer extends StatelessWidget {
  const CowContainer({super.key, required this.name});

  final String name;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.indigo,
      ),
      child: ListTile(
        leading: const CircleAvatar(),
        title: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
        trailing: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onTap: () {
          context.read<NavigatorCubit>().showDetail();
        },
      ),
    );
  }
}
