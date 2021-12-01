import 'dart:convert';
import 'dart:io';

void myLittleMain() {
  int anzahl = 40;
  double anteil = 1.5;
  bool frage = true;
  
  
  Auto chimesee = Auto('chimi');
  Auto flitzer = Auto('benisuto');
  print(flitzer.getName());
  
  int aufarbeit = 7;
  
  


  while(true){
    print("Wie viel woleln wir Fahren");
    var line = stdin.readLineSync(encoding: utf8);

    if (line != null ){
      try{
        int eingabeInteger = int.parse(line.trim());
        if (eingabeInteger< 0){
          break;
        }
        flitzer.fahren(eingabeInteger);
      } catch (Exception){
        print("Sie haben etwas ungültiges eingegeben versuchen sie es noch einmal");
      }
      
    }
    flitzer.printGefahreneKilometer();
   }  


   print ("danke für das Mitfahren bis bald");
}



class Auto{
  String name;
  int gefahreneKilometer = 0;
  
  Auto(String this.name){}
  
  void fahren(int gefahren){
    gefahreneKilometer =  gefahren + gefahreneKilometer;
  }
  
  void printGefahreneKilometer(){
    print( "Bisher GeFAHREN: " + gefahreneKilometer.toString() + " Kilometer");
  }
 
  
  String getName(){
    return name;
  }
}