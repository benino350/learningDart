import 'dart:convert';

import 'dart:io';

int? integerLesen () {
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
  return null;
}