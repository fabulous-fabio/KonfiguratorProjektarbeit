class Button {
  int buttonx;
  int buttony;
  int buttonWidth;
  int buttonHeight;
  int buttonRound;
  
  String buttonText;
  color buttonC;
  
  
  
  Button(int x, int y, int w, int h, int rc, color c, String text) {
    buttonx = x;
    buttony = y;
    buttonWidth = w;
    buttonHeight = h;
    buttonRound = rc;
    buttonC = c;
    buttonText = text;
    rectMode(CORNER);
    stroke(222);
    fill(buttonC);
    rect(buttonx, buttony, buttonWidth, buttonHeight, buttonRound);
    textSize(22);
    fill(222);
    textAlign(CENTER);
    text(buttonText, buttonx+(buttonWidth/2), buttony+buttonHeight-5);
    textAlign(CORNER);
  }
  
  
  boolean overButton(int width, int height)  {
    if (mouseX >= buttonx && mouseX <= buttonx + width && 
        mouseY >= buttony && mouseY <= buttony + height) {
      return true;
    } else {
      return false;
    }
  }
  
  boolean pressed() {
    
    if (mouseX >= buttonx && mouseX <= buttonx + buttonWidth && 
        mouseY >= buttony && mouseY <= buttony + buttonHeight && mousePressed == true) {
      return true;
      
    } else {
      return false;
    }
  }
  
 

}
  
  
