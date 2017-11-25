int cols,rows;
int scl;
void setup(){
size(600,600,P3D);
int w = 600;
int h = 600;
cols = w / scl;
rows = h/scl;
}

void draw(){
  background(0);
  for (int x 00;x<cols;++){
  for(int y =0; y <rows;y++){
    rect(x*scl,y*scl,scl);
  }
  
}
}