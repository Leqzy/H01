boolean even;

void setup(){
  even = evenGetal((6 + 6)/2);
  println(even);
}

void draw(){
  
}

boolean evenGetal(int getal){
  if(getal % 2 == 0){
    return true;
  }else{
     return false;
  }
}
