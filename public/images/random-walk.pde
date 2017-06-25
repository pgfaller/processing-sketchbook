
// Adapted from Dan Shiffman, natureofcode.com

var width = 600;
var height = 400;
var Walker = function() {
    this.x = width/2;
    this.y = height/2;
};

Walker.prototype.display = function() {
  // The nextGaussian() function returns a normal distribution of random numbers
  // with the following parameters: a mean of zero and a standard deviation of one
  //var num = generator.nextGaussian();
  //var standardDeviation = 2;
  //var mean = 8;

  // Multiply by the standard deviation and add the mean.
  //var r = standardDeviation * num + mean;

    stroke(0, 255, 0);
    fill(255, 0, 0); // Red
    //noStroke();
    //ellipse(this.x, this.y, 1, 1);
    point(this.x, this.y);
};

// Randomly move up, down, left, right, or stay in one place
Walker.prototype.walk = function() {
    var choice = floor(random(4));
    //var jump = floor(random(10));
    var jump = 1;
    if (choice === 0) {
        this.x += jump;
    } else if (choice === 1) {
        this.x -= jump;
    } else if (choice === 2) {
        this.y += jump;
    } else {
        this.y -= jump;
    }
};

Walker.prototype.walk2 = function() {
  var r = random(1);

  // It will be most likely to move to the right
  if (r < 0.4) {
    this.x++;
  } else if (r < 0.6) {
    this.x--;
  } else if (r < 0.8) {
    this.y++;
  } else {
    this.y--;
  }
}

//var generator = new Random(1);
var w = new Walker();

void draw() {
    w.walk();
    w.display();
};

void setup() {
 size(width, height);
 background(100);
 stroke(255);
 ellipse(50, 50, 25, 25);
 println("hello web!");
}
