class Mover {

  
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float topspeed;

  Mover() {
    
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    topspeed = 5;
  }

  void update() {
    
   
    PVector mouse = new PVector(mouseX,mouseY);
    PVector acceleration = PVector.sub(mouse,location);
    
    acceleration.setMag(0.2);
    
  
    velocity.add(acceleration);

    velocity.limit(topspeed);
   
    location.add(velocity);
  }

  void display() {
    stroke(255);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,48,48);
  }

}