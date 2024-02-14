int munten = 58;
int level = 15;
String medaille = "goud";

boolean quest1 = false;
boolean quest2 = false;
boolean quest3 = false;


if(munten >= 50){
 quest1 = true;
}

if(level >= 10){
 quest2 = true; 
}

if(medaille == "goud"){
 quest3 = true; 
}

boolean gameComplete = quest1 && quest2 && quest3;

if(gameComplete == true){
 println("Je hebt de game gehaald"); 
} 
