import "dart:io";

void main() {
  var choix;
  
  print("Bienvenu dans notre Restaurant");
  print("------Voici le Menu---------");
  print("1- Eru");
  print("2- Ndolé");
  print("3- Sauce Jaune");
  print("------");
  stdout.write("Veuillez choisir : ");
  choix = stdin.readLineSync();
  switch(choix)
  {
    case "1": 
      print("vous avez choisi Eru");
      break;
    case "2":
      print("vous avez choisi Ndolé");
      break;
    case "3":
      print("vous avez choisi Sauce Jaune");
      break;
    default:
      print("Choix Invalide");
  }
}