void main() {
  // Déclaration des variables pour la réservation
  String nomClient = "Mta Tpkd";
  int nombrePersonnes = 4;
  const String dateReservation = "2024-07-16";
  final String lieuReservation = "Restaurant Nsimeyong";
  double prixParPersonne = 1000;
  double montantTotal;

  // Calcul du montant total de la réservation
  montantTotal = prixParPersonne * nombrePersonnes;

  // Vérification de la disponibilité des places
  int placesDisponibles = 50;
  if (nombrePersonnes <= placesDisponibles) {
    print("Réservation confirmée pour ${nombrePersonnes} personnes à ${lieuReservation} le ${dateReservation}.");
    print("Montant total à payer : \$${montantTotal}");
    placesDisponibles -= nombrePersonnes; // Mettre à jour les places disponibles
    print("Places restantes : ${placesDisponibles}");
  } else {
    print("Désolé, il n'y a pas assez de places disponibles pour ${nombrePersonnes} personnes.");
  }

  // Affichage des informations sur la réservation
  print("Client : ${nomClient}");
  print("Date de réservation : ${dateReservation}");
}
