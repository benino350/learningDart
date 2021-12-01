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



 int counter = 0;
  while(counter <= 5){
      print(counter);
      counter = counter + 1;

  }

  while(true){
    var line = stdin.readLineSync(encoding: utf8);

    if (line != null ){
      flitzer.fahren(int.parse(line.trim()));
    }

    
    flitzer.printGefahreneKilometer();
   }  
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