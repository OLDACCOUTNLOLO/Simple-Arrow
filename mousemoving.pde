float angle = 0;
float rotationSpeed = 0;
boolean isRotating = false;

void setup(){
  size(800, 600);
}

void draw(){
  background(255);
  translate(width/2, height/2);
  rotate(angle);
  drawArrow();
  
  if(isRotating){
    angle += rotationSpeed;
    rotationSpeed *= 0.98;
    
    if(abs(rotationSpeed) < 0.001){
      rotationSpeed = 0;
      isRotating = false;
    }
  }
}

void mousePressed(){
 rotationSpeed = 0.1;
 isRotating = true;
}

void drawArrow(){
 fill(0);
 noStroke();
 beginShape();
 vertex(-20, 10);
 vertex(0, -20);
 vertex(20, 10);
 vertex(0,0);
 endShape(CLOSE);
}
