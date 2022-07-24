import 'package:balance_keeper_sql/Models/person_model.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxList<PersonModel> personList = <PersonModel>[
    PersonModel(name: "Anikuttan", amount: 200, taskName: "TExt Task", discriptionText: 'This is discripition text'),
  ].obs;
}
