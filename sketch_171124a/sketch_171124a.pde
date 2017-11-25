float [] terreno;
float offset;
float mover = random(0, 10000);
int w=192;
void setup() {
  size(1080,500,P2D);
  terreno=new float [w+2];
}

void draw() {
  background(255);
  mover+=0.01;
  offset = mover;
  
  for (int i=0; i<terreno.length-1; i++) {
    terreno[i] = map(noise(offset), 0, 1, -250, 250);
    offset+=0.01;
  }
  for (int i = -1; i< terreno.length-1; i++) {
    line(i*(width/w), height, i*(width/w), terreno[i+1]+height/2);
  }
}