/*
  Button class:
*/

final public class Button extends User_Interface{
  
  private color tempColor;
  private color tempTextColor;
  private boolean buttonState = true;
  
  /*
    public void hoverAnimation(int red, int green, int blue);
    public boolean isPressed();
  */
  
  // For the image parameter, you have to pass function //loadImage("Name of your picture file")
  public Button(boolean  ellipse,                 // shape of the button is ellipse or rectagle
                float    posX,                    // position of the button on X axis
                float    posY,                    // position of the button on Y axis
                float    Bwidth,                  // width of the button
                float    Bheight,                 // height of the button
                color    fillColor,               // color of the button
                String   content,                 // text on the button (if not pass null)
                int      textSize,                // size of the text   (if not pass 0)
                color    textColor,               // color of the text  (if not pass 0)
                PImage   image)                   // image on the button(if not pass null)
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
     
    /* 
      This function will animated the button when you hover your mouse over it
      The parameter pass the value of the color you want to changen to
    */
    
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
