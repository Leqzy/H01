void setup() {
  size(400, 400);
  background(255);
  int squareSize = 50;
  
  for (int i = 0; i < 5; i++) {
    int x = i * squareSize;
    int y = i * squareSize;
    
    // Teken het vierkant
    rect(x, y, squareSize, squareSize);
  }
}
