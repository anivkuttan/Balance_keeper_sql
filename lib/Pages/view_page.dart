import 'package:flutter/material.dart';

import 'edit_page.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View All'),
      ),
      body: ListView.builder(
          // padding: const EdgeInsets.symmetric(vertical: 40),
          clipBehavior: Clip.antiAlias,
          itemCount: 3,
          itemBuilder: (context, index) {
            return const ViewCard();
          }),
    );
  }
}

class ViewCard extends StatelessWidget {
  const ViewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(clipBehavior: Clip.hardEdge, children: [
      GestureDetector(
        onTap: () {
          Route route = MaterialPageRoute(builder: (context) {
            return const  AddOrEditPage("Edit");
          });
          Navigator.of(context).push(route);
        },
        child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(23),
            ),
            height: 200,
            width: double.infinity),
      ),
      Positioned(
        top: -20,
        left: size.width / 2 - (40),
        child: const CircleAvatar(
          radius: 40,
          backgroundColor: Colors.blue,
        ),
      )
    ]);
  }
}
