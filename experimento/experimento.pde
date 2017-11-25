float t;
void setup(){

size(500,500);
}
void draw (){
  background(20);
  stroke(255);
  strokeWeight(2);
  translate (width/2, height/2);
  for (float i=0; i< 7; i++){
  ellipse(x1(t+i),y1(t+i),x2(t+i),y2(t+i));
}
  //point (x1(t),y1(t));
  //point (x2(t),y2(t));
  t++;
}
float x1(float t){
  return sin(t/10)*23 + sin(t/5)*random(1,100)* cos(t/2)*5 + cos(t/12)*20;
}
float y1(float t){
  return cos(t/3)*1;
}

float x2(float t){
  return sin(t/20)*25 + sin(t/5)*random(1,52)+cos(t/10)*66;
}

float y2(float t){
  return cos(t/20)*78 + cos(t/12)*20- sin(t/20)*75 + sin(t/5)*10+cos(t/10)*33;
}