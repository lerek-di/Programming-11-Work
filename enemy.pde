class Enemy extends GameObject {
  
  int enemiesdestroyed;
  
  Enemy(String imgname, color c, int lives) {
    super(random(width), -20, 0, 3, imgname, 40, c, lives);
  }
  
  void act() {
    super.act();
    
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0;
        }
      } if (lives == 0) break;
      i++;
    }
    if (lives <= 0) {
      score++;
    }
    if (offScreen()) lives = 0;
  }
}
