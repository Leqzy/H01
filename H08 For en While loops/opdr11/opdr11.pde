void setup() {
  size(200, 200);
  int squareSize = 20;
  int numSquares = 10;
  

  for (int i = 0; i < numSquares; i++) {
    for (int j = 0; j < numSquares; j++) {

      int x = 0 + i * (squareSize + 0);
      int y = 0 + j * (squareSize + 0);
      
      if((i + j) % 2 == 0){
        fill(255);
      } else{
        fill(0);
      }
     
      
      rect(x, y, squareSize, squareSize);
    }
  }
}
