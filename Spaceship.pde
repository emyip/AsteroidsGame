class Spaceship extends Floater  
{ 
  int mySpeed;
  public Spaceship() {
    corners = 3;
    corners = 9;
      xCorners = new int [corners];
      yCorners = new int [corners];
      xCorners[0] = 30;
      yCorners[0] = 0;
      xCorners[1] = 15;
      yCorners[1] = 10;
      xCorners[2] = 0;
      yCorners[2] = 10;
      xCorners[3] = -25;
      yCorners[3] = 20;
      xCorners[4] = -15;
      yCorners[4] = 10;
      xCorners[5] = -15;
      yCorners[5] = -10;
      xCorners[6] = -25;
      yCorners[6] = -20;
      xCorners[7] = 0;
      yCorners[7] = -10;
      xCorners[8] = 15;
      yCorners[8] = -10;
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
