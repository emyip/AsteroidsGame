Spaceship emily = new Spaceship();
Star[] stars = new Star[100];
ArrayList<Asteroid> emilyAsteroid;
Asteroid hello = new Asteroid();
public void setup() 
{
   emilyAsteroid = new ArrayList<Asteroid>();
  for(int i = 0; i < 20; i++){
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
  for(int i = 0; i < emilyAsteroid.size();i++){
    emilyAsteroid.get(i).show();
    emilyAsteroid.get(i).move();
    float e = dist(emily.getX(), emily.getY(), emilyAsteroid.get(i).getX(), emilyAsteroid.get(i).getY());
    if(e<10)
    emilyAsteroid.remove(i);
  }
  hello.move();
  hello.show();
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
    background(0);
  } 
  else if(key == 'w'){
  double newCenter = Math.random()*700;
    emily.setmyCenterX(newCenter);
    emily.setmyCenterY(newCenter);
    emily.setmyXspeed(0);
    emily.setmyYspeed(0);
  }
}
