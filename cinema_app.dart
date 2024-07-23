import 'dart:io';

void main() {
  // Déclaration des constantes pour les prix des billets
  const double prixFilmA = 6500;
  const double prixFilmB = 7500;
  const double prixFilmC = 5000;

  // Variables pour stocker les choix de l'utilisateur et le coût total
  String choixFilm;
  int nombreBillets;
  double coutTotal = 0.0;
  bool continuer = true;

  do {
    // Affichage du menu des films
    print("\n=== Menu de Réservation de Billets de Cinéma ===");
    print("1. Film A (\$$prixFilmA par billet)");
    print("2. Film B (\$$prixFilmB par billet)");
    print("3. Film C (\$$prixFilmC par billet)");
    print("4. Terminer la réservation");
    print("Choisissez un film (1-4) :");

    // Lecture de l'entrée utilisateur
    choixFilm = stdin.readLineSync() ?? '';

    // Gestion des choix avec switch
    switch (choixFilm) {
      case '1':
        print("Combien de billets pour Film A ?");
        nombreBillets = int.parse(stdin.readLineSync() ?? '0');
        coutTotal += prixFilmA * nombreBillets;
        print("$nombreBillets billets pour Film A ajoutés. Total actuel : \$$coutTotal");
        break;
      case '2':
        print("Combien de billets pour Film B ?");
        nombreBillets = int.parse(stdin.readLineSync() ?? '0');
        coutTotal += prixFilmB * nombreBillets;
        print("$nombreBillets billets pour Film B ajoutés. Total actuel : \$$coutTotal");
        break;
      case '3':
        print("Combien de billets pour Film C ?");
        nombreBillets = int.parse(stdin.readLineSync() ?? '0');
        coutTotal += prixFilmC * nombreBillets;
        print("$nombreBillets billets pour Film C ajoutés. Total actuel : \$$coutTotal");
        break;
      case '4':
        continuer = false;
        break;
      default:
        print("Choix invalide, veuillez réessayer.");
    }
  } while (continuer);

  // Affichage du récapitulatif de la réservation
  print("\n=== Récapitulatif de la réservation ===");
  print("Total à payer : \$$coutTotal");
  print("Merci pour votre réservation !");
}