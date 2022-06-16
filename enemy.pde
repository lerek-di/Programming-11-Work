class Enemy extends GameObject {
  
  int enemiesdestroyed;
  
  Enemy() {
    super(random(width), -20, 0, 3, 40, #FFEB2E, 1);
  }
  
  void act() {
    super.act();
    
    if (frameCount % 180 == 0) {
      objects.add(new EnemyBullet(x, y, 1, 10));
      objects.add(new EnemyBullet(x, y, -1, 10));
    }
    
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives = 0;
          obj.lives = 0;
          enemiesdestroyed = enemiesdestroyed + 1;
          score += enemiesdestroyed;
        }
      }
      i++;
    }
    
    if(offScreen()) lives = 0;
  }
}
