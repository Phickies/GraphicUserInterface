//	This is an UI for my project: Smart Shoe
//	All the code are written by Phicks

Button button1, button2; 
Slider slider;

color backgroundColor = 200;

void setup() {
  
  noStroke();
  size(700, 700);
  rectMode(RADIUS);
  ellipseMode(RADIUS);
  textAlign(CENTER,CENTER);

  button1 = new Button(false,350, 350, 100, 50, 0, "Hello", 40, 255, null);
  button2 = new Button(true, 200, 200, 50, 50, 255, "ON", 30, 0, null);
  slider = new Slider(true, 200, 500, 20, 20, 255, 200, 20, 50);
}

void draw() {
  background(backgroundColor);

  button1.display(); 
  button2.display();
  slider.display();
  button1.hoverAnimation(255, 255, 0);
  button2.hoverAnimation(255, 255, 0);
}

void mousePressed() {
  
  if (button2.isPressed()) {
    if (button2.getButtonState()){
    button2.setColor(0);
    button2.setTextColor(255);
    button2.setText("OFF");
    button2.setButtonState(false);
    } else {
    button2.setColor(255);
    button2.setTextColor(0);
    button2.setText("ON");
    button2.setButtonState(true);
    }
  } 
}

void mouseDragged(){
}
