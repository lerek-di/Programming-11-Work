class Enemy2 extends GameObject {
  
  int enemiesdestroyed;
  
  Enemy2() {
    super(random(width), -20, 0, 3, 40, #FF03B8, 5);
  }
  
  void act() {
    super.act();
    
    if (frameCount % 90 == 0) {
      objects.add(new EnemyBullet2(x, y, -1, 6));
      objects.add(new EnemyBullet2(x, y, 1, 6));
      objects.add(new EnemyBullet2(x, y, 0, -6));
      objects.add(new EnemyBullet2(x, y, -2, 4));
      objects.add(new EnemyBullet2(x, y, 2, 4));
      objects.add(new EnemyBullet2(x, y, -2, -4));
      objects.add(new EnemyBullet2(x, y, 2, -4));
      objects.add(new EnemyBullet2(x, y, -4, -2));
      objects.add(new EnemyBullet2(x, y, 4, -2));
    }
    
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0;
          enemiesdestroyed = enemiesdestroyed + 1;
          score += enemiesdestroyed;
        }
      }
      i++;
    }
    
    if (y >= 200 && vx == 0) {
      vx = random(-5, 5);
    }
    if (x <= 0 || x >= width) vx = vx * -1;
    if (y >= 200) vy = 0;
    
    if (offScreen()) lives = 0;
  }
}
