void main(){
  double loisir = 30000;
  double loyer = 55000;
  double nutrition = 40500;
  double transport = 15000;
  double autreDepense = 30000;
  int revenu = 250000;

  double totalDepense = loyer + nutrition + loisir + transport + autreDepense;
  double solde = revenu - totalDepense;
  print("le revenu mensuel est: ${revenu}");
  print("la depense mensuelle est: ${totalDepense}");
  print("le solde du mois est: ${solde}");
  if (solde >= 0) {
    print("le solde est positif.");
    } else {
      print("le solde est négatif.");
    }

  }