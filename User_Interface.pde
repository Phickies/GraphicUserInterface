// This is an UI design class for future development

class User_Interface {

  private float posX, posY, UIwidth, UIheight;
  private String content;
  private boolean ellipse;
  private int textSize = 20;                                          // Default text size
  private color fillColor;                                            
  private color textColor;                                           
  private PImage image;
  
  private PFont font = createFont("Roboto-Regular.ttf", this.textSize, true);
  
  User_Interface(){}
  // For the image parameter, you have to pass function //loadImage("Name of your picture file")
  protected User_Interface(boolean  ellipse, 
                           float    posX, 
                           float    posY, 
                           float    UIwidth, 
                           float    UIheight,
                           color    fillColor,
                           String   content, 
                           int      textSize,
                           color    textColor,
                           PImage   image) 
  {
    this.ellipse = ellipse;
    this.posX = posX;
    this.posY = posY;
    this.UIwidth = UIwidth;
    this.UIheight = UIheight;
    this.content = content;
    this.textSize = textSize;
    this.image = image;
    this.fillColor = fillColor;
    this.textColor = textColor;
  }
  
  protected void setFillColor(int red, int green, int blue) {
    this.fillColor = color(red, green, blue);
  }

  protected void setFillColor(color fillColor) {
    this.fillColor = fillColor;
  }

  protected void setContentColor(color textColor) {
    this.textColor = textColor;
  }

  protected void setTextSize(int textSize) {
    if (content != null) {
      this.textSize = textSize;
    }
  }
  
  protected void setText(String content){
    this.content = content;
  }
  
  protected float getPosX(){
    return posX;
  }
  
  protected float getPosY(){
    return posY;
  }
  
  protected color getFillColor(){
    return fillColor;
  }
  
  protected color getTextColor(){
    return textColor;
  }
  
  protected boolean isEllipse(){
    return ellipse;
  }

  public void display() {
    if (isEllipse() != true){
      fill(getFillColor());
      if (image == null) {
        rect(posX, posY, UIwidth, UIheight);
      } else {
        image(image, posX, posY, UIwidth, UIheight);
      }
      fill(getFillColor());
    
      if (content != null) {
        fill(textColor);
        textFont(font);
        textSize(textSize);
        text (content, posX, posY); 
        fill(textColor);
      }
    } else {
      fill(getFillColor());
      ellipse(posX, posY, UIwidth, UIheight);  
      fill(getFillColor());
    
      if (content != null) {
        fill(textColor);
        textFont(font);
        textSize(textSize);
        text (content, posX, posY); 
        fill(textColor);
      }
    }
  }
  
  public boolean isHover() {
    boolean isHover = false;
    if (isEllipse() != true){
      if ( mouseX > posX - UIwidth && mouseX < posX + UIwidth && mouseY > posY - UIheight && mouseY < posY + UIheight) {
        isHover = true;
      } else {
        isHover = false;
      }
    } else {
      if ((mouseX - posX)*(mouseX - posX) + (mouseY - posY)*(mouseY - posY) < (UIwidth*UIheight)){
        isHover = true;
      } else {
        isHover = false;
      }
    }
    return isHover;
  }
}