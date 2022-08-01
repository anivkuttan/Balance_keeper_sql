import 'package:balance_keeper_sql/Controllers/home_page_controller.dart';
import 'package:balance_keeper_sql/Models/person_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddOrEditPage extends StatefulWidget {
  final String buttonName;
  final PersonModel? editedPerson;
  const AddOrEditPage(
    this.buttonName, {
    Key? key,
    this.editedPerson,
  }) : super(key: key);

  @override
  State<AddOrEditPage> createState() => _AddOrEditPageState();
}

class _AddOrEditPageState extends State<AddOrEditPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController taskNameController = TextEditingController();
  TextEditingController discriptionController = TextEditingController();
  int amountCounter = 0;
  final controller = Get.find<HomePageController>();
  @override
  void initState() {
    super.initState();
    var editedPerson = widget.editedPerson;
    if (editedPerson != null) {
      nameController.text = editedPerson.name;
      taskNameController.text = editedPerson.taskName ?? '';
      discriptionController.text = editedPerson.discriptionText ?? '';
      amountCounter = editedPerson.amount;
    }
  }

  SizedBox sizeBox = const SizedBox(
    height: 20,
  );
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.buttonName} Person"),
      ),
      body: Form(
        key: formKey,
        // autovalidateMode: AutovalidateMode.always,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 220,
                          child: TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              label: const Text('Name'),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23),
                              ),
                            ),
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Please Enter Name';
                              }
                              return null;
                            },
                          ),
                        ),
                        sizeBox,
                        SizedBox(
                          width: 220,
                          child: TextFormField(
                            controller: taskNameController,
                            decoration: InputDecoration(
                              label: const Text('TaskName'),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(23),
                              ),
                            ),
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Please Enter Task Name';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 60,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(23),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                sizeBox,
                ListTile(
                  title: const Text('Balance'),
                  subtitle: Text("300 +($amountCounter)"),
                  trailing: Text(
                    '${300 + amountCounter}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                sizeBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              amountCounter -= 1;
                            });
                          },
                          child: const Text("-1"),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              amountCounter -= 10;
                            });
                          },
                          onLongPress: () {
                            setState(() {
                              amountCounter -= 100;
                            });
                          },
                          child: const Text("-10"),
                        ),
                      ],
                    ),
                    Text(
                      '$amountCounter',
                      style: const TextStyle(fontSize: 80),
                    ),
                    Column(
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              amountCounter += 1;
                            });
                          },
                          child: const Text("+1"),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              amountCounter += 10;
                            });
                          },
                          onLongPress: () {
                            setState(() {
                              amountCounter += 100;
                            });
                          },
                          child: const Text("+10"),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: discriptionController,
                  decoration: InputDecoration(
                    label: const Text('Discription'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                    ),
                  ),
                  maxLines: 5,
                ),
                sizeBox,
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      final isFormValitated = formKey.currentState!.validate();
                      if (isFormValitated) {
                        final name = nameController.text;
                        final amount = amountCounter;
                        final taskname = taskNameController.text;
                        final discreption = discriptionController.text;
                        PersonModel newPerson = PersonModel(
                          name: name,
                          amount: amount,
                          taskName: taskname,
                          discriptionText: discreption,
                        );
                        controller.personList.add(newPerson);
                        Navigator.pop(context);
                      }
                    },
                    child: widget.buttonName == "Edit" ? const Text("Update") : const Text('Add Person'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
