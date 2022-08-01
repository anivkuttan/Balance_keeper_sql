import 'package:balance_keeper_sql/Controllers/home_page_controller.dart';
import 'package:balance_keeper_sql/Pages/add_all_person_page.dart';
import 'package:balance_keeper_sql/Pages/edit_page.dart';
import 'package:balance_keeper_sql/Pages/view_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(HomePageController());
  List<Widget> item = [
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
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(23),
                              ),
                              height: 40,
                              width: 60,
                            ),
                            const SizedBox(width: 20),
                            Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 43, 18, 234),
                                borderRadius: BorderRadius.circular(23),
                              ),
                            ),
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
              child: Obx(() {
                return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Route route = MaterialPageRoute(builder: (context) {
                            return AddOrEditPage(
                              "Edit",
                              editedPerson: controller.personList[index],
                            );
                          });
                          Navigator.push(context, route);
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 35,
                          child: Text(
                            controller.personList[index].name[0].toUpperCase(),
                            style: const TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 10);
                    },
                    itemCount: controller.personList.length);
              }),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 60,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const AddAllPerson();
                    }),
                  );
                },
                child: const Text(
                  'Add Amount To all Person',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 60,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Add Amount To Some Person',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 60,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) {
                    return const ViewPage();
                  });
                  Navigator.of(context).push(route);
                },
                child: const Text(
                  'View all Person',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
