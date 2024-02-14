int getal;



void setup(){
 mijnMethode(15, 30);
 size(500, 500);
}


void draw(){
  background(255);
  int xWaarde;
}

void  mijnMethode(int getal, int getaltwee){
 
  int totaal = (getal + getaltwee) / 2;
  println("Het gemiddelde van " + getal + " + " + getaltwee + " = " + totaal);
}
