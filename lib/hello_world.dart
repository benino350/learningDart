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
  
  print("Wie viel woleln wir Fahren");
  var line = stdin.readLineSync(encoding: utf8);
 
  for(int zaehler = 0; zaehler < aufarbeit; zaehler++){
     flitzer.fahren(10);
  }

  
   chimesee.printGefahreneKilometer();
}



class Auto{
  String name;
  int gefahreneKilometer = 0;
  
  Auto(String this.name){}
  
  void fahren(int gefahren){
    gefahreneKilometer =  gefahren + gefahreneKilometer;
  }
  
  void printGefahreneKilometer(){
    print(gefahreneKilometer.toString());
  }
 
  
  String getName(){
    return name;
  }
}