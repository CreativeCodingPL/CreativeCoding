int size = 16;
int pointX, pointY;

Follower[] followers;

void setup() {
  size(640, 720);
  pointX = width/2 + size/2;
  pointY = height/2;
  
  followers = new Follower[3];
  followers[0] = new Follower(0, 0, size);
  followers[1] = new Follower(width-size, 0, size);
  followers[2] = new Follower(width-size, height-size, size);
}

void draw() {
  
  displayGrid();
  
  fill(0);
  ellipse(pointX, pointY, size, size); 
  
  for(int i = 0; i < followers.length; i++) {
    followers[i].move(pointX, pointY);
    followers[i].display();
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    pointX = pointX - size;
    if (pointX < 0) {
      //pointX = pointX + size;
      pointX = width - size/2;
    }
  } else if (keyCode == RIGHT) {
    pointX = pointX + size;
    if (pointX > width) {
      pointX = size/2;
    }
  } else if (keyCode == UP) {
    pointY = pointY - size;
    if (pointY < 0) {
      pointY = height - size/2;
    }
  } else if (keyCode == DOWN) {
    pointY = pointY + size;
    if (pointY > height) {
      pointY = size/2;
    }
  }
}

void displayGrid() {
  background(255);
  stroke(245);
  for(int i = size; i < width; i = i + size) {
    line(i, 0, i, height);    
  }
  for(int i = size; i < height; i = i + size) {
    line(0, i, width, i);    
  }
}
