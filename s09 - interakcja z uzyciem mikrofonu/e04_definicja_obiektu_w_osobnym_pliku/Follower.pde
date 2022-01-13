class Follower {
  float x;
  float y;
  
  int size;
  
  Follower(float ix, float iy, int s) {
    x = ix;
    y = iy;
    size = s;
  }
  
  void display() {
    fill(255, 0, 0);
    
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
}
