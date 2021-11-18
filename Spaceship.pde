class Spaceship extends Floater  
{ 
  int mySpeed;
  public Spaceship() {
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myCenterX = 350;
    myCenterY = 350;
    myColor = color(255, 192, 203);
  }
  public void setmyCenterX(double x) {
    myCenterX = x;
  }
  public void setmyCenterY(double y) {
    myCenterY = y;
  }
  public void setmyXspeed(double z) {
    myXspeed = z;
  }
    public void setmyYspeed(double e) {
    myYspeed = e;
  }
}
