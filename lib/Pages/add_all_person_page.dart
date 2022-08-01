import 'package:flutter/material.dart';

class AddAllPerson extends StatefulWidget {
  const AddAllPerson({Key? key}) : super(key: key);

  @override
  State<AddAllPerson> createState() => _AddAllPersonState();
}

class _AddAllPersonState extends State<AddAllPerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Amount to All Persons'),
      ),
    );
  }
}
