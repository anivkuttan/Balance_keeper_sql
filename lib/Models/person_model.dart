class PersonModel {
  String name;
  double amount;
  String? discriptionText;
  String? taskName;
  PersonModel({
    required this.name,
    required this.amount,
    this.discriptionText,
    this.taskName,
  });
}
