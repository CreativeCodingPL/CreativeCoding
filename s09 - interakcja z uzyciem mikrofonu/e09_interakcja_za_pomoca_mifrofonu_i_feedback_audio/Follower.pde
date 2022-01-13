class Follower {
  float x;
  float y;

  float rx;
  float ry;
  boolean isFollowing = true;
  int timeout;

  int size;
  float easing;
  
  color normalColor;
  color runAwayColor;

  Follower(float ix, float iy, int s) {
    x = ix;
    y = iy;
    size = s;
    easing = random(0.001, 0.01);
    runAwayColor = color(0, 255, 0);
  }
  
  void setColor(color c) {
    normalColor = c;
  }

  void move(float targetX, float targetY) {

    if (isFollowing) {
      float dx = targetX - x;
      x += dx * easing;

      float dy = targetY - y;
      y += dy * easing;
    } else {
      if (timeout > 0) {

        float dx = rx - x;
        x += dx * easing;

        float dy = ry - y;
        y += dy * easing;

        timeout = timeout - 1;
      } else {
        isFollowing = true;
      }
    }
  }

  void display() {

    if (isFollowing) {
      fill(normalColor);
    } else {
      if (frameCount % 6 < 3) {
        fill(runAwayColor, 0);
      } else {
        fill(runAwayColor);
      }
    }

    float nx, ny;

    if (x % size > size/2) {
      nx = ceil(x/size);
    } else {
      nx = floor(x/size);
    }

    if (y % size > size/2) {
      ny = ceil(y/size);
    } else {
      ny = floor(y/size);
    }

    rect(int(nx)*size, int(ny)*size, size, size);
  }

  void goAway() {
    if (isFollowing) {
      isFollowing = false;
      timeout = int(random(60, 150));
      rx = random(width);
      ry = random(height);
    }
  }
}
