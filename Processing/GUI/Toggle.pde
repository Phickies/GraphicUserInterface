/*
  Toggle class
*/

final public class Toggle extends Slider{
  
  private color offColor, onColor;
  private float barPosX, barWidth, switchX;
  private boolean switchState = true;
  private boolean end = false;
  private int animationTime = 5;
  
  public Toggle(float    barPosX,                // position of toggle bar on X axis
                float    barPosY,                // position of toggle bar on Y axis
                float    barWidth,               // width of the toggle bar
                color    barColor,               // color of the toggle bar when on
                color    offColor,               // color of the toggle bar when off
                color    fillColor)              // color of the switch
  {
    super(true, barPosX, barPosY, barWidth, barWidth, barColor, barWidth, barWidth, fillColor, true);
    this.barPosX = barPosX;
    this.barWidth = barWidth;
    this.offColor = offColor;
    this.onColor = barColor;
    this.switchX = barPosX;
  }
  
  public void setSwitchState(boolean state){
    this.switchState = state;
  }
  
  public void setAnimationTime(int value){
    this.animationTime = value;
  }
  
  public boolean getSwitchState(){
    return switchState;
  }
  
  public int getAnimationTime(){
    return animationTime;
  }
  
  public void display(){
    super.display();
    this.update();
  }
  
  public void update(){
    if (switchState){
      if (!end){
        switchX -= animationTime;
        if (switchX == barPosX - barWidth){
          super.setBarColor(offColor);
          end = true;
        }
        super.setPosX(switchX);
      }
    } else {
      if (end){
        switchX += animationTime;
        if (switchX == barPosX + barWidth){
          super.setBarColor(onColor);
          end = false;
        }
        super.setPosX(switchX);
      }
    }
  }
  
  public boolean switched(){
    boolean switched = false;
    if (super.isHover()){
      switched = true;
    }
    return switched;
  }
}
