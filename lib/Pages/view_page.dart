import 'package:flutter/material.dart';

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
        title: const Text('View All Persons'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return const SingleCard();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: 3),
      ),
    );
  }
}

class SingleCard extends StatefulWidget {
  const SingleCard({Key? key}) : super(key: key);

  @override
  State<SingleCard> createState() => _SingleCardState();
}

class _SingleCardState extends State<SingleCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(23),
          ),
          height: 250,
          width: double.infinity,
        ),
        const Positioned(
          top: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 60,
          ),
        ),
      ],
    );
  }
}
