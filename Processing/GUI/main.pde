/* 
  GUI pre-made

  The main sketch will show the examples of some pre-made GUI created in Processing.
  This pre-made contain Button Slider and Toggle which will help you 
  take less time to create your own GUI menu.
  You can copy the code and read the documents inside the class for more descprition and usage
  
  @Phicks.
  created on 22-10-2022.
*/

Button button1, button2; 
Slider slider1, slider2;
Toggle toggle1;

color backgroundColor = 200;
int i;

void setup() {
  
  noStroke();
  size(700, 700);
  rectMode(RADIUS);
  ellipseMode(RADIUS);
  textAlign(CENTER,CENTER);
  frameRate(60);

  button1 = new Button(false, 350, 350, 100, 50, 0, "Hello", 40, 255, null);
  button2 = new Button(true, 200, 200, 50, 50, 255, "ON", 30, 0, null);
  slider1 = new Slider(true, 350, 500, 150, 5, 50, 20, 20, 255, true);
  slider2 = new Slider(false, 500, 350, 5, 50, 50, 20, 10, 255, false);
  toggle1 = new Toggle(500, 200, 25, color(0,255,0), color(255,0,0), 255);
}

void draw() {
  background(backgroundColor);

  button1.display(); 
  button2.display();
  slider1.display();
  slider2.display();
  toggle1.display();
  button1.hoverAnimation(255, 255, 0);
  slider1.matchValue(i, 0, 1000);
  slider2.matchValue(backgroundColor, 255, 0);
  
  if (!toggle1.getSwitchState()){
    fill(255);
    text(i, 350, 100);
  }
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
  
  if (toggle1.switched()){
    if (toggle1.getSwitchState()){
      toggle1.setSwitchState(false);
    } else {
      toggle1.setSwitchState(true);
    }
  }
}

void mouseDragged(){
  if (slider1.isHover()){
    i = int(slider1.updateValue(mouseX));
  }
  if (slider2.isHover()){
    backgroundColor = int(slider2.updateValue(mouseY));
  }
}
