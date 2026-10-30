class Categorie {
  final int? id;
  final String nom;
  final String? description;

  Categorie({
    this.id,
    required this.nom,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nom': nom,
      'description': description,
    };
  }

  factory Categorie.fromMap(Map<String, dynamic> map) {
    return Categorie(
      id: map['id'] as int?,
      nom: map['nom'] as String,
      description: map['description'] as String?,
    );
  }
}