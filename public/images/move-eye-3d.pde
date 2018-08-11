//
// Move Eye by Simon Greenwold.
// The camera lifts up (controlled by mouseY) 
// while looking at the same point.
//

var width = 640;
var height = 360;
void setup() {
  size(width, height, P3D);
  fill(200);
}

void draw() {
  //lights();
  //translate(0,0,220);
  directionalLight(255, 0, 0, 1, 0, 0);
  directionalLight(0, 255, 0, 0, 1, 0);
  directionalLight(0, 0, 255, 0, 0, -1);
  //translate(0,0,-220);
  background(0);
  
  // Change height of the camera with mouseY
  camera(mouseX - width/2, mouseY - height/2, 220.0, // eyeX, eyeY, eyeZ
         0.0, 0.0, 0.0, // centerX, centerY, centerZ
         0.0, 1.0, 0.0); // upX, upY, upZ
  
  noStroke();
  box(90);
  stroke(255);
  line(-100, 0, 0, 100, 0, 0);
  line(0, -100, 0, 0, 100, 0);
  line(0, 0, -100, 0, 0, 100);
}
