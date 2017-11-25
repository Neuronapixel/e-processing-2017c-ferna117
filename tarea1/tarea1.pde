float t;
void setup(){
background(20);
size(500,500);
}
void draw (){
  stroke(255);
  strokeWeight(2);
  translate (width/2, height/2);
  for (float i=0; i< 7; i++){
  line(x1(t+i),y1(t+i),x2(t+i),y2(t+i));
}
  //point (x1(t),y1(t));
  //point (x2(t),y2(t));
  t++;
}
float x1(float t){
  return sin(t/10)*23 + sin(t/5)*22* cos(t/2)*5 + cos(t/12)*20;
}
float y1(float t){
  return cos(t/3)*1;
}

float x2(float t){
  return sin(t/20)*25 + sin(t/5)*66+cos(t/10)*66;
}

float y2(float t){
  return cos(t/20)*78 + cos(t/12)*20- sin(t/20)*75 + sin(t/5)*10+cos(t/10)*33;
}