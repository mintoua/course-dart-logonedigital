import 'dart:io';
import 'Restaurant.dart';

void main() {
  gestionRestaurant();
}

void gestionRestaurant() {
  Restaurant restaurant = Restaurant();
  bool continuer = true;

  do {
    restaurant.afficherMenu();
    print("Entrez votre choix : ");
    int choix = int.parse(stdin.readLineSync() ?? '0');

    if (choix == restaurant.menu.length + 1) {
      continuer = false;
    } else {
      print("Combien voulez-vous en commander ? ");
      int quantite = int.parse(stdin.readLineSync() ?? '0');
      restaurant.ajouterCommande(choix, quantite);
    }
  } while (continuer);

  restaurant.afficherRecapitulatif();
}
