class Bullet extends Floater {
  public Bullet(Spaceship emily2) {
    myCenterX = emily2.getX();
    myCenterY = emily2.getY();
    myXspeed = emily2.getXSpeed();
    myYspeed = emily2.getYSpeed();
    myPointDirection = emily2.getPointDirection();
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
