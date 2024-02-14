float cijfer = 8.7;
boolean diploma = false;
boolean vrijstelling = false;
boolean cumlaude = false;

if(cijfer <= 5.5){
 vrijstelling = true; 
}

if(cijfer >= 5.5 && cijfer < 8.0){
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
