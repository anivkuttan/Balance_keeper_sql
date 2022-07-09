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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 20),
                height: 200,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Anikuttan',
                          style: TextStyle(fontSize: 30),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'TotalAmount',
                          style: TextStyle(fontSize: 27),
                        ),
                        Row(
                          children: [
                            Container(height: 40, width: 60, color: Colors.pinkAccent),
                            const SizedBox(width: 20),
                            Container(height: 40, width: 60, color: Colors.purple),
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                      ),
                    )
                  ],
                )),
            const SizedBox(height: 30),
            SizedBox(
              height: 60,
              width: double.maxFinite,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 35,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 10);
                  },
                  itemCount: item.length),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 60,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Add Amount To all Person'),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 60,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Add Amount To Some Person'),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 60,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('View all Person'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
