void main(){

  int revenu = 0;
  double loyer = 0.0;
  double nutrition = 0.0;
  double loisir = 0.0;
  double transport = 0.0;
  double autreDepense = 0.0;

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