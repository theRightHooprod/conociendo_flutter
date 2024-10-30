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
        top: 10
      ),
      child: Column(
        children: [
          CowContainer(name: 'Cow 1'),
          SizedBox(height: 10),
          CowContainer(name: 'Cow 2'),
          SizedBox(height: 10),
          CowContainer(name: 'Cow 3'),
        ],
      ),
    );
  }
}
