import processing.sound.*;

int size = 16;
int pointX, pointY;

Follower[] followers;

AudioIn input;
Amplitude loudness;

SoundFile file;

void setup() {
  size(640, 720);
  pointX = width/2 + size/2;
  pointY = height/2;

  followers = new Follower[3];
  
  followers[0] = new Follower(0, 0, size);
  followers[0].setColor(color(213, 25, 32));
  
  followers[1] = new Follower(width-size, 0, size);
  followers[1].setColor(color(254, 242, 0));
  
  followers[2] = new Follower(width-size, height-size, size);
  followers[2].setColor(color(22, 69, 157));

  input = new AudioIn(this, 0);
  input.start();

  loudness = new Amplitude(this);
  loudness.input(input);
  input.amp(1.0);
  
  file = new SoundFile(this, "knock.wav");
}

void draw() {

  displayGrid();
  checkMic();

  fill(0);
  ellipse(pointX, pointY, size, size);

  for (int i = 0; i < followers.length; i++) {
    followers[i].move(pointX, pointY);
    followers[i].display();
  }
}

void checkMic() {
  float volume = loudness.analyze();
  float level = map(volume, 0, 0.5, 1, 500);
  if (level > 300) {

    if (file.isPlaying() == false) {
      file.play();
    }
    
    for (int i = 0; i < followers.length; i++) {
      followers[i].goAway();
    }

    noStroke();
    fill(0, 50);
    ellipse(pointX, pointY, level, level);
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
  for (int i = size; i < width; i = i + size) {
    line(i, 0, i, height);
  }
  for (int i = size; i < height; i = i + size) {
    line(0, i, width, i);
  }
}
