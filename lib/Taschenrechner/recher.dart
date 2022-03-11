
import 'dart:convert';

import 'dart:io';


void rechner() {



print("Willkommen Zum Taschen rechner");
print("geben sie ihre erste zahl ein");

int erste_zahl = integerLesen();

print("Tippen sie ihre zweite zahl");

int zweite_zahl = integerLesen();

 print("Wählen sie eine rechen art : +  - oder *");


//String rechenart = integerLesen(); 
  berechnen(erste_zahl, zweite_zahl);
}


void berechnen(int erste_zahl, int zweite_zahl){
String? rechenart = stdin.readLineSync(encoding: utf8);
  switch (rechenart){
    case "+": print("ihr ergebniss ist"); print((erste_zahl + zweite_zahl).toString()); break;
    case "-" : print("ihr ergebniss ist"); print((erste_zahl - zweite_zahl).toString()); break;
    case "*" : print("ihr ergebniss ist"); print ((erste_zahl * zweite_zahl)); break;
    default : print ("Es wurde keine rechen art eingegeben versuchen sie es erneut"); berechnen(erste_zahl, zweite_zahl); break;
  }

}

int integerLesen () {
  var line = stdin.readLineSync(encoding: utf8);
  if (line != null ){ 
    try{
      return int.parse(line.trim());
    }catch (e){
      print("Keine nummer eingegeben, bitte nochmal probieren!");
      // rekursions aufruf
      return integerLesen();
    }
  }
  else {
      print("Keine nummer eingegeben, bitte nochmal probieren!");
      // rekursions aufruf
      return integerLesen();
  }
}
 
