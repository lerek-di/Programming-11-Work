class EnemyBullet2 extends GameObject {
  
  EnemyBullet2(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 15, #FF03B8, 1);
  }
  
  void act() {
    super.act();
    if (offScreen()) lives = 0;
  }
}
