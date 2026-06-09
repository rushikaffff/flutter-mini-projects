class Note {
  String title;
  String content;
  String category;

  Note({
    required this.title,
    required this.content,
    required this.category,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'content': content,
      'category': category,
    };
  }

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      title: json['title'],
      content: json['content'],
      category: json['category'],
    );
  }
}