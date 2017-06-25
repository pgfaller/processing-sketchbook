/*
  Andor Salga
  Mouse Light Direction
  Processing compliant
*/

import processing.opengl.*;

void setup(){
  size(200, 200, OPENGL);
}

void draw(){
  background(0);
  float x = (mouseX-100.0)/100.0;
  float y = (mouseY-100.0)/100.0;
  float m = mag(x,y);
  
  x /= m;
  y /= m;

  noStroke();
  ambientLight(40 * y, 40 * x, 0);
  directionalLight(33*x,66,99*y, -x, -y, 0);

  translate(width/2.0, height/2.0, 2);
  sphere(50);
}
