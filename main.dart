void main(){
  //Syntaxe du if .. else
  var temp = 37.5;

  if (temp > 35) {
    print("Il fait chaud");
  } else {
    print("Il fait froid");
  }

  int nombre = 13; 
  if(nombre % 2 == 0)
  { 
    print("$nombre est paire"); 
  }
  else 
  { 
    print("$nombre est impaire"); 
  }   
  print("fin du programme"); 


  //Syntaxe switch

  var choix = 1;
  switch(choix)
  {
    case 1: 
      print("vous avez choisi 1");
      break;
    case 2:
      print("vous avez choisi 2");
      break;
    default:
      print("Choix Invalide");
  }
}