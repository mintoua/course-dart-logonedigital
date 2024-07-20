void main() {
  // Déclaration des variables
  const double revenuMensuel = 2000.0; // Revenu mensuel
  double loyer = 800.0; // Dépense pour le loyer
  double alimentation = 300.0; // Dépense pour l'alimentation
  double transport = 150.0; // Dépense pour le transport
  double autresDepenses = 200.0; // Autres dépenses
  final double totalDepenses; // Déclaration de la variable finale pour les dépenses totales

  // Calcul des dépenses totales
  totalDepenses = loyer + alimentation + transport + autresDepenses;

  // Calcul du solde restant
  double soldeRestant = revenuMensuel - totalDepenses;

  // Affichage des informations
  print("Revenu Mensuel : \$${revenuMensuel}");
  print("Dépenses Totales : \$${totalDepenses}");
  print("Solde Restant : \$${soldeRestant}");

  // Vérification du solde restant
  if (soldeRestant > 0) {
    print("Vous avez un solde positif de \$${soldeRestant}.");
  } else if (soldeRestant == 0) {
    print("Vous avez exactement dépensé ce que vous avez gagné.");
  } else {
    print("Vous avez un solde négatif de \$${soldeRestant.abs()}.");
  }
}
