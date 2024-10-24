import 'package:flutter/material.dart';

import '../screens/cow_detail_view.dart';

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
      child: ListTile(
        leading: const CircleAvatar(),
        title: const Text(
          'Vaca 1',
          style: TextStyle(color: Colors.white),
        ),
        trailing: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onTap: () {
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
        },
      ),
    );
  }
}
