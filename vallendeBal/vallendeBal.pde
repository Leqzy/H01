Ball[] balls; 
int numBalls = 2; 

Player player;
int score = 0;
boolean moveLeft = false;
boolean moveRight = false;
boolean gameOver = false;
boolean startScreen = true;

void setup() {
  size(1280, 720);
  textAlign(CENTER, CENTER);
  frameRate(240);
  textSize(30);

  Objects();
}

void Objects() {
  player = new Player();
  player.X = width / 2;
  player.Y = 680;
  player.Size = 150/2;
  player.Speed = 3.5;

  balls = new Ball[numBalls]; 
  for (int i = 0; i < numBalls; i++) {
    balls[i] = new Ball();
    balls[i].Yspeed = random(1.5, 2.5); // anders wordt het onmogelijk om te halen :)
    balls[i].Size = 80;
  }
}

void draw() {
  background(122);
  textSize(30);

  if (startScreen) {
    displayStartScreen();
    return;
  }

  if (gameOver) {
    displayGameOverScreen();
    return;
  }

  for (int i = 0; i < numBalls; i++) {
    if (balls[i].checkHitBottom()) {
      gameOver = true;
    }

    if (balls[i].checkCollision()) {
      balls[i].reset();
      score++;
    }

    balls[i].update();
  }

  movePlayer();
  checkCollision();
  render();
}

void checkCollision() {
  for (int i = 0; i < numBalls; i++) {
    if (balls[i].Y > player.Y - balls[i].Size/2 && balls[i].X > player.X - player.Size - balls[i].Size/2 && balls[i].X < player.X + player.Size + balls[i].Size/2) {
      balls[i].Y = 0;
      balls[i].X = random(0, width);
      score++;
    }
  }
}

void render() {
  // Render player
  fill(255);
  strokeWeight(5);
  line(player.X - player.Size, player.Y, player.X + player.Size, player.Y);

  // Render score
  textSize(20);
  fill(0);
  text("Score: " + score, 40, 20);

  // Render balls
  for (int i = 0; i < numBalls; i++) {
    balls[i].render();
  }
}

void displayStartScreen() {
  text("Press Spacebar to start the game.", width/2, height/2);
  text("Left and Right arrow to move", width/2, height/2 + 50);
}

void displayGameOverScreen() {
  text("Game Over. Press Spacebar to restart.", width/2, height/2);
  text("Your Score: " + score, width/2, height/2 + 50);
}

void movePlayer() {
  if (moveLeft) {
    player.X -= player.Speed;
    player.X = max(player.X, 0);
  }

  if (moveRight) {
    player.X += player.Speed;
    player.X = min(player.X, width);
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    moveLeft = true;
  }

  if (keyCode == RIGHT) {
    moveRight = true;
  }

  if (key == ' ') {
    if (gameOver || startScreen) {
      startGame();
    }
  }
}

void keyReleased() {
  if (keyCode == LEFT) {
    moveLeft = false;
  }

  if (keyCode == RIGHT) {
    moveRight = false;
  }
}

void startGame() {
  startScreen = false;
  gameOver = false;
  score = 0;
  for (int i = 0; i < numBalls; i++) {
    balls[i].X = random(balls[i].Size/2, width);
    balls[i].Y = 0;
  }
  player.X = width/2;
}

class Ball {
  float X;
  float Y;
  float Size;
  float Yspeed;

  void render() {  
    fill(255);
    ellipse(X, Y, Size, Size);
  }

  boolean checkCollision() {
    return (Y > player.Y - Size/2 && X > player.X - player.Size - Size/2 && X < player.X + player.Size + Size/2);
  }

  boolean checkHitBottom() {
    return (Y > height);
  }

  void update() {
    Y += Yspeed;
  }

  void reset() {
    Y = 0;
    X = random(0, width);
  }
}

class Player {
  int Size;
  float X;
  float Y;
  float Speed;

  Player() {
    Size = 150/2;
    Speed = 3.5;
  }
}

// met de arrays heb ik wel een deel van google overgeschreven omdat ik er niet uit kwam ander
// ik snap het meeste nu wel ervan
