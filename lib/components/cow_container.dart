import 'package:flutter/material.dart';

class CowContainer extends StatefulWidget {
  const CowContainer({super.key});

  @override
  State<CowContainer> createState() => _CowContainerState();
}

class _CowContainerState extends State<CowContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.indigo,
      ),
      child: const ListTile(
        leading: CircleAvatar(),
        title: Text(
          'Vaca 1',
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
    );
  }
}
