class Bullet extends Floater {
  public Bullet(Spaceship emily) {
    myCenterX = emily.getX();
    myCenterY = emily.getY();
    myXspeed = emily.getXSpeed();
    myYspeed = emily.getYSpeed();
    myPointDirection = emily.getPointDirection();
    accelerate(5);
  }
  public void show() {
    fill(255, 255,255);
    ellipse((float)myCenterX, (float)myCenterY, 35, 10);
  }
  public void move()
  {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public float getX() {
    return (float)myCenterX;
  }
  public float getY() {
    return (float)myCenterY;
  }
}
