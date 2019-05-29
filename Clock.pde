class Clock extends Item{
	// Requirement #2: Complete Clock Class


  //Code for Reference:
    Clock(float x, float y){
      super(x, y);
      isAlive = true;
      }

      // Display Cabbage
    void display() {
      image(clock, x, y, w, h);
    }
      // Check collision with player
    void checkCollision(Player player){
    if(player.health < player.PLAYER_MAX_HEALTH
      && isHit(x, y, w, h, player.x, player.y, player.w, player.h)){
      addTime(15);
        isAlive = false;
        x = y = 1000;
      }else{
        isAlive = true;
      }
    }
}
