final public class Slider extends User_Interface{
  
  float barWidth, barHeight;
  color barColor;
  
  public Slider(boolean  ellipse, 
                float    posX, 
                float    posY, 
                float    Slwidth, 
                float    Slheight,
                color    fillColor,
                float    barWidth,
                float    barHeight,
                color    barColor)
  {
    super(ellipse, posX, posY, Slwidth, Slheight, fillColor, null, 0, 0, null);
    this.barWidth = barWidth;
    this.barHeight = barHeight;
    this.barColor = barColor;
  }
  
  void display(){
    fill(barColor);
    rect(super.getPosX(), super.getPosY(), barWidth, barHeight);
    fill(barColor);
    super.display();
  }
}
