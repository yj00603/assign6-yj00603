class Dinosaur extends Enemy{
	// Requirement #4: Complete Dinosaur Class

	final float TRIGGERED_SPEED_MULTIPLIER = 5;


  float currentSpeed = 1f;

  void display() {
    int direction = (currentSpeed > 0) ? RIGHT : LEFT;
  
    pushMatrix();
    translate(x+w, y);
    if (direction == RIGHT) {
      scale(1, 1);
      image(dinosaur, 0, 0, w, h); 
    } else {
      scale(-1, 1);
      image(dinosaur, -w, 0, w, h); 
    }
    popMatrix();
    }


  void update(){
    x += currentSpeed;
    if(x+w < 0 ){
      currentSpeed *= -1;
    }else if(x+w > width-w){
      currentSpeed *= -1;
  }
    if(y == player.y  && x+w <= player.x ){
      currentSpeed = TRIGGERED_SPEED_MULTIPLIER;
  }else{
    x += currentSpeed;
  }
  }


  Dinosaur(float x, float y){
    super(x, y);
  }
}
	// HINT: Player Detection in update()
	/*
	float currentSpeed = speed
	If player is on the same row with me AND (it's on my right side when I'm going right OR on my left side when I'm going left){
		currentSpeed *= TRIGGERED_SPEED_MULTIPLIER
	}
	*/
