import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Person'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 100,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Name'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    radius: 60,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Amount'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Add Amount',
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SubButtonleft(),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 150),
                  ),
                  SubButtonRigth(),
                ],
              ),
              const ListTile(
                title: Text('Balance'),
                subtitle: Text('12+80'),
                trailing: Text(
                  '92',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Discription'),
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              const SizedBox(
                height: 20,
              ),
        
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Discription'),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

class SubButtonleft extends StatelessWidget {
  const SubButtonleft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: () {},
          child: const Text("-1"),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text("-10"),
        ),
      ],
    );
  }
}

class SubButtonRigth extends StatelessWidget {
  const SubButtonRigth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: () {},
          child: const Text("+1"),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text("+10"),
        ),
      ],
    );
  }
}
