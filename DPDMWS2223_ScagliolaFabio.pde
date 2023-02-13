int screenwidth = 1024;

void setup(){
    size(1024, 768, P3D);
    background(9);

}

int height = 300;
int handleWidth = 22;
int handleHeight = 11;
int Screen = 1;

void draw() {
  
  // Display the contents of the current screen
  if (Screen == 1) {
    choice1Screen();
  } else if (Screen == 2) {
    choice2Screen();
  }
}

int rectanglewidth = 300;
int rectangleheight = 456;
int rectangley = 156;

int rectangle1x = 31;
int rectangle2x = 362;
int rectangle3x = 693;
color c;
PImage image1, image2, lampimage;
int[][] colors = {{0,0,0},{91, 91, 91},{162, 162, 162},{213, 213, 213},{255, 255, 255},{110, 44, 0},{243, 156, 18},{241, 196, 15},{171, 235, 198},{118, 215, 196},{169, 204, 227}, {187, 143, 206},{241, 148, 138},{205, 97, 85},{123, 36, 28}};
int[][] accentcolors = {{46, 204, 113},{252, 243, 207},{235, 222, 240},{213, 213, 213},{255, 255, 255},{110, 44, 0},{243, 156, 18},{241, 196, 15},{171, 235, 198},{118, 215, 196},{169, 204, 227}, {187, 143, 206},{241, 148, 138},{205, 97, 85},{245, 176, 65}};
int lampwidth = 200;
int lampheight = 222;
int lampy = 350;
int lampx = 400;
int lamphBefore;
int lamphDifferenze;
int a = 0;
int wait = 0;
color lampColor= 222;
color lampAccentColor = 222;
boolean widthMousepressed = false;
boolean heightMousepressed = false;
boolean yMousepressed = false;

void choice1Screen() {
  background(9);
  Background bg = new Background(a);
  Lamp lamp = new Lamp(lampx, lampy, lampwidth, lampheight, lampColor, lampAccentColor);
  

  // edit buttons
  rectMode(CENTER);
  Button widthButton = new Button((lampx + (lampwidth/2) + 11), lampy, 22, 22, 3, color(55), "<>");
  Button heightButton = new Button((lampx - (lampwidth/2) - 22), lampy, 22, 22, 3, color(55), "^");
  Button yButton = new Button(lampx, lampy - (lampheight/2), 33, 22, 3, color(55), "^");
  
  // change width of lamp
  if (((widthButton.pressed() == true) || (widthMousepressed == true))){
    
      lampwidth = lamp.changeWidth();
      widthMousepressed = true;
  }
  
  // change height of lamp
  if (((heightButton.pressed() == true) || (heightMousepressed == true))){
      lampheight = lamp.changeHeight();
      heightMousepressed = true;
  }
  
  
  // change y of lamp
  if (((yButton.pressed() == true) || (yMousepressed == true))){
    lampy = lamp.changeY();
    yMousepressed = true;
  }
  // menu
  textAlign(CORNER);
  Menue menue1 = new Menue();
  menue1.drawColorbuttons(colors);
  menue1.drawAccentColorbuttons(accentcolors);
  menue1.drawData(0, lampwidth * 2, lampy * 2, lampheight * 2);
  menue1.drawSwitchButton();
  
  a = menue1.drawChangeBgButton(a);

  
}
int lampCount = 2;
int style = 0;
void choice2Screen() {
  textAlign(CORNER);
  // codes for choice 2 screen
  rectMode(CENTER);
  background(9);
  Background bg = new Background(a);
  
  LampWide lampw = new LampWide(lampx, lampy, lampAccentColor, lampColor, lampCount, style);
  if (lampCount <= 4){
    Button widthPlusButton = new Button(lampx + (lampw.getWidth() / 2) + 22, lampy - 11, 22, 22, 3, color(55), "+");
    if (widthPlusButton.pressed()){
    lampCount += 1;
    }
  }
  if (lampCount >= 2){
    Button widthMinusButton = new Button(lampx - (lampw.getWidth() / 2) - 32, lampy - 11, 22, 22, 3, color(55), "-");
    if (widthMinusButton.pressed()){
    lampCount -= 1;
    }
  }
  Button yButton = new Button(lampx, lampy - 90, 33, 22, 3, color(55), "^");
  // change y of lamp
  if (((yButton.pressed() == true) || (yMousepressed == true))){
    lampy = lampw.changeY();
    yMousepressed = true;
  }
  
  textAlign(CORNER);
  Menue menue1 = new Menue();
  menue1.drawSwitchButton();
  menue1.drawColorbuttons(colors);
  menue1.drawData(0, (lampCount +1) * 95 * 2, lampy * 2, lampheight * 2);
  menue1.drawAccentColorbuttons(accentcolors);
  menue1.drawBarTypeButtons();
  
  a = menue1.drawChangeBgButton(a);

}
void choice3Screen() {
  // codes for game over screen
}





/********* INPUTS *********/

public void mousePressed() {
  // if we are on the initial screen when clicked, start the game

}

void mouseReleased() {
  widthMousepressed = false;
  heightMousepressed = false;
  yMousepressed = false;
}
