class Robot extends Enemy{
	// Requirement #5: Complete Dinosaur Class

	final int PLAYER_DETECT_RANGE_ROW = 2;
	final int LASER_COOLDOWN = 180;
	final int HAND_OFFSET_Y = 37;
	final int HAND_OFFSET_X_FORWARD = 64;
	final int HAND_OFFSET_X_BACKWARD = 16;
  float speed = 2f;
	// HINT: Player Detection in update()
	/*

	boolean checkX = ( Is facing forward AND player's center point is in front of my hand point )
					OR ( Is facing backward AND player's center point (x + w/2) is in front of my hand point )

	boolean checkY = player is less than (or equal to) 2 rows higher or lower than me

	if(checkX AND checkY){
		Is laser's cooldown ready?
			True  > Fire laser from my hand!
			False > Don't do anything
	}else{
		Keep moving!
	}

	*/


  void display() {
    int direction = (speed > 0) ? RIGHT : LEFT;
  
    pushMatrix();
    translate(x+w, y);
    if (direction == RIGHT) {
      scale(1, 1);
      image(robot, 0, 0, w, h); 
    } else {
      scale(-1, 1);
      image(robot, -w, 0, w, h); 
    }
    popMatrix();
    }


  void update(){
    x += speed;
    if(x+w < 0 ){
      speed *= -1;
    }else if(x+w > width-w){
      speed *= -1;
    if(y == player.y  && x+w <= player.x ){
      x += 0;
    }else{
      x += speed;
    }
  }

/*
  boolean checkX = ( Is facing forward AND player's center point is in front of my hand point )
          OR ( Is facing backward AND player's center point (x + w/2) is in front of my hand point )

  boolean checkY = player is less than (or equal to) 2 rows higher or lower than me

  if(checkX AND checkY){
    Is laser's cooldown ready?
      True  > Fire laser from my hand!
      False > Don't do anything
  }else{
    Keep moving!
  }
*/

  

  }


  Robot(float x, float y){
    super(x, y);
  }
}
