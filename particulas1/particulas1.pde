ArrayList<Particle> pSystem;
Mover mover;
void setup() {
  mover = new Mover(); 
  size(400, 400);
  background(0);
  pSystem = new ArrayList<Particle>();
  int nP =100;
  for (int i = 0; i<nP; i++ ) {
    Particle newParticle = new Particle();
    pSystem.add(newParticle);
  }
}

void draw() {
  

  for (int i=pSystem.size()-1; i>=0; i--) {
    Particle theParticle = pSystem.get(i);
    if (theParticle.alive) {
      theParticle.run();
    } else {
      pSystem.remove(theParticle);
    }
      mover.update();
  
  mover.display(); 
  }
  println("particulas:"+pSystem.size());// Mover
}



void mouseMoved() {
  Particle newParticle = new Particle(mouseX, mouseY);
  pSystem.add(newParticle);
}