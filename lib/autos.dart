class Auto{
  String name;
  int gefahreneKilometer = 0;
  
  Auto(String this.name){}
  
  // Methode; name: fahlren
  // Rückgabewert: void
  // Eingabe: Integer gefahren
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

class AutoMitDach extends Auto{
  bool dachOffen = false;
  AutoMitDach(String name): super(name);

  void dachOeffnen(){
    dachOffen = true;
    print("dach ist offen");
  }
  void dachschliessen(){
    dachOffen = false;
    print("dach ist gesclossen");
  }
}
