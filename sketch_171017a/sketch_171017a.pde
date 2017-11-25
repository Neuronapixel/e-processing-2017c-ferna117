PImage ing;
int cellsize=2;
int column,rows;
void setup(){
size(900,500,P3D);
ing=loadImage("1.jpg");
column=ing.width/cellsize;
rows=ing.height/cellsize;
}
void draw(){
background(0);
for(int i=0;i<column;i++){
  for(int j=0;j<rows;j++){
    int x = i*cellsize+cellsize/2;
    int y = j*cellsize+cellsize/2;
    int loc = x+y*ing.width;
    color c = ing.pixels[loc];
    float z=(mouseX/float(width/20))*brightness(ing.pixels[loc])-20.0;
    pushMatrix();
    translate(x,y,z);
    fill(c,204);
    noStroke();
    rectMode(CENTER);
    rect(0,0,cellsize,cellsize);
    popMatrix();
}
}
}