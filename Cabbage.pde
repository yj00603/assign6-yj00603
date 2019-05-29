class Cabbage extends Item{
	// Requirement #1: Complete Cabbage Class


	//Code for Reference:
    Cabbage(float x, float y){
      super(x, y);
      }

			// Display Cabbage
    void display() {
      image(cabbage, x, y, w, h);
    }
      // Check collision with player
    void checkCollision(Player player){
    if(player.health < player.PLAYER_MAX_HEALTH
      && isHit(x, y, w, h, player.x, player.y, player.w, player.h)){
      player.health ++;
        isAlive = false;
        x = y = 1000;
      }else {
      isAlive = true;
    }
 }

}
