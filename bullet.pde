class Bullet extends GameObject {
  
  Bullet(float x, float y, float vx, float vy) {
    super(player1.x, player1.y, vx, vy, 8, #FF0000, 1);
  }
  
  void act() {
    super.act();
    if (offScreen()) lives = 0;
  }
}
