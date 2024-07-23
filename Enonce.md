D'accord ! Voici un exercice simple qui couvre les notions de variables, constantes, la structure switch, la boucle do-while et l'utilisation de `dart:io` pour la saisie utilisateur.

### Exercice : Menu de Restaurant Interactif

#### Objectif
Créer un programme Dart qui affiche un menu de restaurant interactif. Le programme doit permettre à l'utilisateur de sélectionner des plats, calculer le coût total de la commande, et afficher un récapitulatif de la commande.

#### Étapes

1. Déclarez des variables pour stocker les informations sur les plats et leur coût.
2. Utilisez des constantes pour les prix des plats.
3. Utilisez la structure `switch` pour gérer les choix de l'utilisateur.
4. Utilisez une boucle `do-while` pour permettre à l'utilisateur de continuer à ajouter des plats jusqu'à ce qu'il choisisse de terminer.
5. Utilisez `dart:io` pour la saisie utilisateur (`stdin.readLineSync()`).

#### Code Exemple

```dart
import 'dart:io';

void main() {
  // Déclaration des constantes pour les prix des plats
  const double prixPizza = 8.0;
  const double prixBurger = 5.0;
  const double prixSalade = 4.0;
  const double prixBoisson = 2.0;

  // Variables pour stocker les choix de l'utilisateur et le coût total
  String choix;
  double coutTotal = 0.0;
  bool continuer = true;

  do {
    // Affichage du menu
    print("\n=== Menu de Restaurant ===");
    print("1. Pizza (\$$prixPizza)");
    print("2. Burger (\$$prixBurger)");
    print("3. Salade (\$$prixSalade)");
    print("4. Boisson (\$$prixBoisson)");
    print("5. Terminer la commande");
    print("Choisissez un plat (1-5) :");

    // Lecture de l'entrée utilisateur
    choix = stdin.readLineSync() ?? '';

    // Gestion des choix avec switch
    switch (choix) {
      case '1':
        coutTotal += prixPizza;
        print("Pizza ajoutée. Total actuel : \$$coutTotal");
        break;
      case '2':
        coutTotal += prixBurger;
        print("Burger ajouté. Total actuel : \$$coutTotal");
        break;
      case '3':
        coutTotal += prixSalade;
        print("Salade ajoutée. Total actuel : \$$coutTotal");
        break;
      case '4':
        coutTotal += prixBoisson;
        print("Boisson ajoutée. Total actuel : \$$coutTotal");
        break;
      case '5':
        continuer = false;
        break;
      default:
        print("Choix invalide, veuillez réessayer.");
    }
  } while (continuer);

  // Affichage du récapitulatif de la commande
  print("\n=== Récapitulatif de la commande ===");
  print("Total à payer : \$$coutTotal");
  print("Merci pour votre commande !");
}
```
Cet exercice permet d'apprendre les bases du langage Dart pour débutants en utilisant les notions de variables, constantes, structures conditionnelles, boucles et interaction utilisateur via `dart:io`.

D'accord, voici un autre exercice pour appliquer les mêmes concepts de Dart :

### Exercice : Système de Réservation de Billets de Cinéma

#### Objectif
Créer un programme Dart pour gérer la réservation de billets de cinéma. Le programme doit permettre à l'utilisateur de sélectionner un film, choisir le nombre de billets, et calculer le coût total de la réservation. Le programme doit également permettre à l'utilisateur de terminer la réservation et afficher un récapitulatif.

#### Étapes

1. Déclarez des variables pour stocker les informations sur les films et leur coût.
2. Utilisez des constantes pour les prix des billets.
3. Utilisez la structure `switch` pour gérer les choix de l'utilisateur.
4. Utilisez une boucle `do-while` pour permettre à l'utilisateur de continuer à réserver des billets jusqu'à ce qu'il choisisse de terminer.
5. Utilisez `dart:io` pour la saisie utilisateur (`stdin.readLineSync()`).

#### Code Exemple

```dart
import 'dart:io';

void main() {
  // Déclaration des constantes pour les prix des billets
  const double prixFilmA = 10.0;
  const double prixFilmB = 12.0;
  const double prixFilmC = 8.0;

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
```