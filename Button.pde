// This is the code for someone who interested in UI/game development

final public class Button extends User_Interface{
  
  private color tempColor;
  private color tempTextColor;
  private boolean buttonState = true;
  
  public Button(boolean  ellipse, 
                float    posX, 
                float    posY, 
                float    Bwidth, 
                float    Bheight,
                color    fillColor,
                String   content, 
                int      textSize,
                color    textColor,
                PImage   image)
   {
     super(ellipse, posX, posY, Bwidth, Bheight, fillColor, content, textSize, textColor, image);
     tempColor = super.getFillColor();
     tempTextColor = super.getTextColor();
   }
   
   public void setColor(color newColor){
     this.tempColor = newColor;
   }
   
   public void setColor(int red, int green, int blue){
     this.tempColor = color(red, green, blue);
   }
   
   public void setTextColor(color newColor){
     this.tempTextColor = newColor;
   }
   
   public void setButtonState(boolean state){
     buttonState = state;
   }
   
   public boolean getButtonState(){
     return buttonState;
   }
   
   public void hoverAnimation(int red, int green, int blue){
     if (super.isHover()){
       super.setFillColor(color(red, green, blue));
       super.setContentColor(0);
     } else {
       super.setFillColor(this.tempColor);
       super.setContentColor(this.tempTextColor);
     }
   }
   
   public boolean isPressed(){
     boolean isPressed = false;
     if (super.isHover()){
       isPressed = true;
     }
     return isPressed;
   }
}
