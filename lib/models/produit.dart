
class Produit {
  final int? id;
  final String nom;
  final double prix;
  final int quantite;
  final bool disponible;
  final String dateAjout;
  final int categorieId;

  Produit({
    this.id,
    required this.nom,
    required this.prix,
    required this.quantite,
    required this.disponible,
    required this.dateAjout,
    required this.categorieId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nom': nom,
      'prix': prix,
      'quantite': quantite,
      'disponible': disponible ? 1 : 0,
      'dateAjout': dateAjout,
      'categorieId': categorieId,
    };
  }

  factory Produit.fromMap(Map<String, dynamic> map) {
    return Produit(
      id: map['id'],
      nom: map['nom'],
      prix: (map['prix'] as num).toDouble(),
      quantite: map['quantite'],
      disponible: map['disponible'] == 1,
      dateAjout: map['dateAjout'],
      categorieId: map['categorieId'],
    );
  }
}
