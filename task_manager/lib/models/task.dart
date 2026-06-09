class Task {
  String title;
  String priority;
  bool isCompleted;

  Task({
    required this.title,
    required this.priority,
    this.isCompleted = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'priority': priority,
      'isCompleted': isCompleted,
    };
  }

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      title: json['title'],
      priority: json['priority'],
      isCompleted: json['isCompleted'],
    );
  }
}