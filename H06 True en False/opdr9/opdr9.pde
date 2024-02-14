float cijfer = 7.7;
float cijfer2 = 5.5;
boolean diploma = false;
boolean vrijstelling = false;
boolean cumlaude = false;

if(cijfer <= 5.5 || cijfer2 <= 5.5){
 vrijstelling = true; 
}

if(cijfer >= 5.5 && cijfer < 8.0 && cijfer2 >= 5.5){
  diploma = true;
}

if(cijfer >= 8.0){
 cumlaude = true;
}

if(vrijstelling){
 println("Je hebt een vrijstelling gekregen");
}

if(diploma){
  println("Gefeliciteerd met je diploma");
}

if(cumlaude){
 println("Gefeliciteerd je bent cumlaude geslaagd");
}
