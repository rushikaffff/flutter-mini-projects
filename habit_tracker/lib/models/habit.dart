class Habit {
  String name;
  bool isCompleted;

  Habit({
    required this.name,
    this.isCompleted = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'isCompleted': isCompleted,
    };
  }

  factory Habit.fromJson(Map<String, dynamic> json) {
    return Habit(
      name: json['name'],
      isCompleted: json['isCompleted'],
    );
  }
}