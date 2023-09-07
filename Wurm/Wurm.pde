float rad = 20;
float maxcircleRad=100;
float mincircleRad=20;
boolean größeändern=true;

void setup() {
  size(1000, 600);
}

void draw() {
  background(0);
  circle(mouseX, mouseY, rad);

  if (mousePressed) {
    stroke(random(0, 255), random(0, 255), random(0, 255));
    fill(random(0, 255), random(0, 255), random(0, 255));
    if (rad==mincircleRad) {
      größeändern=true;
    }
    if (rad==maxcircleRad) {
      größeändern=false;
    }
    if (größeändern==true) {
      circle(mouseX, mouseY, rad++);
    } else if (größeändern==false) {
      circle(mouseX, mouseY, rad--);
    }
  }
  
  if(keyPressed){
    background(0);
  }
}
