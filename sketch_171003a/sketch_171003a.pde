PImage myImage;
float velocidad = 0;
void setup(){
size(500,500);
myImage= loadImage("455594.jpg");

}
void draw(){
image(myImage,velocidad,mouseY);

}