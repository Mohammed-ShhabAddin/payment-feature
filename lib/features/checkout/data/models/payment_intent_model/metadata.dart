class Metadata {
  final String id;
  final String description;

  Metadata({required this.id, required this.description});

  factory Metadata.fromJson(Map<String, dynamic> json) {
    return Metadata(
      id: json['id'] as String,
      description: json['description'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
    };
  }
}
