import 'package:flutter/material.dart';

import '../components/cow_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        right: 10,
        left: 10,
        top: 30
      ),
      child: Column(
        children: [
          CowContainer(),
          SizedBox(height: 10),
          CowContainer(),
          SizedBox(height: 10),
          CowContainer()
        ],
      ),
    );
  }
}
