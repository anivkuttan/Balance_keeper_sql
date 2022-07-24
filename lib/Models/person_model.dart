class PersonModel {
  String name;
  int amount;
  String? taskName;
  String? discriptionText;
  PersonModel({
    required this.name,
    required this.amount,
    this.taskName,
    this.discriptionText,
  });
}
