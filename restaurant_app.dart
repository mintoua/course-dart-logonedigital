import 'dart:io';
double coutTotal = 0.0;

//Ici nous avons utilisé le code du TD 2 pour découper en fonction réutilisable

//La fonction qui permet d'afficher le récapitulatif de la commande
void recapitulatifCommande(){
    // Affichage du récapitulatif de la commande
  print("\n=== Récapitulatif de la commande ===");
  print("Total à payer : $coutTotal FCFA");
  print("Merci pour votre commande !");
}


//La fonction qui permet d'afficher le menu du restaurant et de traiter les commandes.
void afficherMenu(){
  String nomPlat1 = "Pizza";
  String nomPlat2 = "Chapati";
  String nomPlat3 = "Salade";
  String nomPlat4 = "Boisson";

  // Déclaration des constantes pour les prix des plats
  const double prixPizza = 6000;
  const double prixChapati = 1500;
  const double prixSalade = 1000;
  const double prixBoisson = 500;

  // Variables pour stocker les choix de l'utilisateur et le coût total
  String choix;
  bool continuer = true;
    do {
    // Affichage du menu
    print("\n=== Menu de Restaurant ===");
    print("1. $nomPlat1 ($prixPizza FCFA)");
    print("2. $nomPlat2 ($prixChapati FCFA)");
    print("3. $nomPlat3 ($prixSalade FCFA)");
    print("4. $nomPlat4 ($prixBoisson FCFA)");
    print("5. Terminer la commande");
    print("Choisissez un plat (1-5) :");

    // Lecture de l'entrée utilisateur
    choix = stdin.readLineSync() ?? '';

    // Gestion des choix avec switch
    switch (choix) {
      case '1':
        coutTotal += prixPizza;
        print("$nomPlat1 ajoutée. Total actuel : $coutTotal FCFA");
        break;
      case '2':
        coutTotal += prixChapati;
        print("$nomPlat2 ajouté. Total actuel : $coutTotal FCFA");
        break;
      case '3':
        coutTotal += prixSalade;
        print("$nomPlat3 ajoutée. Total actuel : $coutTotal FCFA");
        break;
      case '4':
        coutTotal += prixBoisson;
        print("$nomPlat4 ajoutée. Total actuel : $coutTotal FCFA");
        break;
      case '5':
        continuer = false;
        break;
      default:
        print("Choix invalide, veuillez réessayer.");
    }
  } while (continuer);
  recapitulatifCommande();
}

void main() {
  //Appel de la fonction afficher MENU
  afficherMenu();
}