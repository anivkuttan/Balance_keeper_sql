import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> item = [
    const CircleAvatar(
      backgroundColor: Colors.green,
      radius: 30,
    ),
    const CircleAvatar(
      backgroundColor: Colors.green,
      radius: 30,
    ),
    const CircleAvatar(
      backgroundColor: Colors.green,
      radius: 30,
    ),
    const CircleAvatar(
      backgroundColor: Colors.green,
      radius: 30,
    ),
    const CircleAvatar(
      backgroundColor: Colors.green,
      radius: 30,
    ),
    const CircleAvatar(
      backgroundColor: Colors.green,
      radius: 30,
    ),
    const CircleAvatar(
      backgroundColor: Colors.green,
      radius: 30,
    ),
    const CircleAvatar(
      backgroundColor: Colors.green,
      radius: 30,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(23),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 60,
              width: double.maxFinite,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 30,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 10);
                  },
                  itemCount: item.length),
            )
          ],
        ),
      ),
    );
  }
}
