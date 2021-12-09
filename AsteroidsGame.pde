Spaceship emily = new Spaceship();
Star[] stars = new Star[100];
ArrayList<Asteroid> emilyAsteroid;
ArrayList <Bullet> shooter= new ArrayList<Bullet>();
public void setup()
{
  emilyAsteroid = new ArrayList<Asteroid>();
  for (int i = 0; i < 20; i++) {
    emilyAsteroid.add(i, new Asteroid());
  }
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  size(700, 700);
  background(0);
}
public void draw()
{
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  for (int l = 0; l <shooter.size(); l++) {
    shooter.get(l).show();
    shooter.get(l).move();
  }
  for (int j = 0; j < emilyAsteroid.size(); j++) {
    emilyAsteroid.get(j).show();
    emilyAsteroid.get(j).move();
    float e = dist(emily.getX(), emily.getY(), emilyAsteroid.get(j).getX(), emilyAsteroid.get(j).getY());
    if (e<30)
      emilyAsteroid.remove(j);
  }
  for (int j = 0; j < emilyAsteroid.size(); j++) {
    for (int k = 0; k <shooter.size(); k++) {
      if (dist(shooter.get(k).getX(), shooter.get(k).getY(), emilyAsteroid.get(j).getX(), emilyAsteroid.get(j).getY()) < 30)
      {
        shooter.remove(k);
        emilyAsteroid.remove(j);
        break;
      }
    }
  }
  emily.show();
  }

public void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      emily.accelerate(0.2);
      emily.move();
    } else if (keyCode == RIGHT) {
      emily.move();
      emily.turn(45);
    } else if (keyCode == LEFT) {
      emily.move();
      emily.turn(-45);
    } else if (keyCode == DOWN) {
      emily.move();
      emily.accelerate(-0.2);
    }
  }
  if (key == 'b' || key == 'B') {
    shooter.add(new Bullet(emily));
  }
  if (key == 'w' || key == 'W') {
    double newCenter = Math.random()*700;
    emily.setmyCenterX(newCenter);
    emily.setmyCenterY(newCenter);
    emily.setmyXspeed(0);
    emily.setmyYspeed(0);
  }
}
