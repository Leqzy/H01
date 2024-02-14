size(400,400);
background(255,255,255);

int sizeC = 100;

for(int i = 0; i < 50; i++){
  ellipse(0 - sizeC/2, 0 - sizeC/2, sizeC,sizeC);
  sizeC = sizeC - 10;
}
