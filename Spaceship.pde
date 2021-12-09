class Spaceship extends Floater  
{ 
  int mySpeed;
  public Spaceship() {
corners = 8;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -16; 
      yCorners[0] = -16; 
      xCorners[1] = 32; 
      yCorners[1] = 0; 
      xCorners[2] = -16; 
      yCorners[2] = 16;
      xCorners[3] = -24; 
      yCorners[3] = 12; 
      xCorners[4] = -32; 
      yCorners[4] = 16; 
      xCorners[5] = -40; 
      yCorners[5] = 0;
      xCorners[6] = -32; 
      yCorners[6] = -16; 
      xCorners[7] = -24; 
      yCorners[7] = -12;
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
  public float getX() {
    return (float)myCenterX;
  }
  public float getY() {
    return (float)myCenterY;
  }
    public float getXSpeed() {
    return (float)myXspeed;
  }
  public float getYSpeed() {
    return (float)myYspeed;
  }
  public float getPointDirection(){
    return(float)myPointDirection;
  }
   public double getDirectionX() {
    return Math.cos(myPointDirection*(Math.PI/180));
  } 
  public double getDirectionY() {
    return Math.sin(myPointDirection*(Math.PI/180));
  } 
}
