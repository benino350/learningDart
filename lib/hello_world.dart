import 'dart:convert';
import 'dart:io';
import 'autos.dart';

void myLittleMain() {
  int anzahl = 40;
  double anteil = 1.5;
  bool frage = true;
  
  
  Auto chimesee = Auto('chimi'); 
  AutoMitDach flitzer = AutoMitDach('benisuto') ; 
  print(flitzer.getName());
  
  int aufarbeit = 7;
  
  
 // Next time: funktion zum commandozeilen parsen
  while(true)
  {    
    print("Was soll gemacht werden? \n 0: fahren \n 1: dach öffnen \n 2: dach schließen");
    var line = stdin.readLineSync(encoding: utf8);
    if (line != null ){
      int entscheidung = int.parse(line.trim());
      switch (entscheidung) {
        case 0: autofahren(flitzer); break;
        case 1: flitzer.dachOeffnen(); break;
        case 2: flitzer.dachschliessen(); break;
        default: print("Ungülitge eingabe");
      }

     }
  }
  
  

}

void autofahren(Auto auto){
  while(true){
    print("Wie viel woleln wir Fahren");
    var line = stdin.readLineSync(encoding: utf8);

    if (line != null ){
      try{
        int eingabeInteger = int.parse(line.trim());
        if (eingabeInteger< 0){
          break;
        }
        auto.fahren(eingabeInteger);
      } catch (Exception){
        print("Sie haben etwas ungültiges eingegeben versuchen sie es noch einmal");
      }
      
    }
    auto.printGefahreneKilometer();
   }  


   print ("danke für das Mitfahren bis bald");
}