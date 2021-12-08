class Bullet extends Floater{
  public Bullet(Spaceship emily){
    myCenterX = emily.getX();
    myCenterY = emily.getY();
    myXspeed = emily.getXSpeed();
    myYspeed = emily.getYSpeed();
    myPointDirection = emily.getPointDirection();
  }
}
