float [] terreno;
float offset;
int w=192;
void setup(){
terreno=new float [w+2];
}

void draw(){

for(int i=0;i<terreno.length;i++){
terreno[i] = map(noise(offset),0,1,-250,250);
}

}