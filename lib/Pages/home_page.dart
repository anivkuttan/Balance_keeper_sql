import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'BalanceKeeper',
              style: TextStyle(fontSize: 30),
            ),
            centerTitle: true,
            expandedHeight: 300,
            // toolbarHeight: 100,

          
          ),
          
        ],
      ),
    );
  }
}
