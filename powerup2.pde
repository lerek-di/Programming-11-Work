class PowerUp2 extends GameObject {
  
  int Collected2;
  
  PowerUp2() {
    super(random(width), 0, 0, 4, 15, #40CEFF, 1);
  }
  
  void act() {
    super.act();
    if (y > height) lives = 0;
  }
}
