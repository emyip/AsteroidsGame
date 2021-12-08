class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = 5;
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -12;
    yCorners[0] = 12;
    xCorners[1] = 0;
    yCorners[1] = 20;
    xCorners[2] = 24;
    yCorners[2] = 6;
    xCorners[3] = 8;
    yCorners[3] = -8;
    xCorners[4] = -8;
    yCorners[4] = -4;
    int randomR = (int)(Math.random()*255);
    int randomB = (int)(Math.random()*255);
    int randomG = (int)(Math.random()*255);
    myColor = color(randomR,randomB,randomG);
    myCenterX = (int)(Math.random()*700);
    myCenterY = (int)(Math.random()*700);
    myXspeed = (int)(Math.random()*5)-3;
    myYspeed = (int)(Math.random()*5)-3;;
    myPointDirection = (int)(Math.random()*360);
  }
  public void move(){
   turn(rotSpeed);
   super.move();

  }
    public float getX(){
    return (float)myCenterX;
  }
    public float getY(){
    return (float)myCenterY;
  }
}
