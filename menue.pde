// menu
int timer = 0;
int timer2 = 0;
int timer3 = 0;
int colorMode = 0;

class Menue{
  
  Menue(){
    rectMode(CENTER);
    fill(111);
    rect(874, 384, 300, 768);
    textAlign(CORNER);
  }
  
  int xMenu = 754;
  
  void drawSwitchButton(){
    Button imgButton = new Button(xMenu, 30, 200 ,30 ,2, 0, String.format("Lampendesign %d", Screen));
    timer += 1;
    if(imgButton.pressed() == true && Screen == 1 && timer > 5){
      Screen = 2;
      timer = 0;

    } else if(imgButton.pressed() == true && Screen == 2 && timer > 5){
      timer += 1;
      Screen = 1;
      timer = 0;

    }
  }
  
  
  int drawChangeBgButton(int a){
    
    Button imgButton = new Button(xMenu, 700, 200 ,30 ,2, 0, "Hintergrund ändern");
    timer2 += 1;
    if (imgButton.pressed() && timer2 > 5){
      a+=1;
      timer2 = 0;
      if(a>=3){
        a = 0;
      }
    }
    return a;
  }
  
  void drawChangeColorModeButton(){
    Button colorMode_button = new Button(xMenu + 100, 70, 150, 30, 5, c, "Farbmodus");
    timer3 += 1;
    if (colorMode_button.pressed() && timer3 > 7){
        if (colorMode == 0){
          colorMode = 1;
        }else if (colorMode == 1){
          colorMode = 0;
        }
      timer3 = 0;
    }
  }
  
  void drawColorbuttons(int[][] colors){
    fill(0);
    text("Farbe:", xMenu, 90);
    if (colorMode == 0){
      int row = 0;
      for (int i = 0 ; i < colors.length; i++){
          color c = color(colors[i][0],colors[i][1],colors[i][2]);
          int column, k;
          column = i/5;
          
          if (i==5|| i == 10 || i == 15){
            row = 0;
          }
          
          
          Button color_button = new Button(xMenu + (row * 50), 100 + column*40, 33, 33, 5, c, "");
          if (color_button.pressed() == true){
            lampColor = c;
          }
          row += 1;
  
      }
    } else {
    
    }
  }
    
    
    void drawAccentColorbuttons(int[][] colors){
      fill(0);
      text("Akzent Farbe:", xMenu, 240);
      if (colorMode == 0){
      int row = 0;
      for (int i = 0 ; i < colors.length; i++){
          color c = color(colors[i][0],colors[i][1],colors[i][2]);
          int column, k;
          column = i/5;
          
          if (i==5|| i == 10 || i == 15){
            row = 0;
          }
          
          
          Button color_button = new Button(xMenu + (row * 50), 250 + column*40, 33, 33, 5, c, "");
          if (color_button.pressed() == true){
            lampAccentColor = c;
          }
          row += 1;
  
      }
      } else {
    
      }
    }
    
    
    void drawBarTypeButtons(){
      for (int i = 0; i <= 2; i++){    
            Button style_button = new Button(xMenu, 385 + i*40, 33, 33, 5, c, ">");
            PImage Img = loadImage(String.format("deckenleuchte-style-%d.png", i));
            Img.resize(200, 22);
            image(Img, xMenu + 55, 385 + i*40);
            if (style_button.pressed() == true){
              style = i;
            }
      }
    }
    
    void drawData(int lampType, int lampWidth, int lampY, int lampHeight){
      
      text("Maße:", xMenu, 580);
      text(String.format("Höhe zur Decke: %d mm", lampY), xMenu, 600);
      text(String.format("Breite: %d mm", lampWidth), xMenu, 620);
      if(lampType == 0){
        text(String.format("Höhe der Lampe: %d mm", lampHeight), xMenu, 640);
      }
    }
  }
  
  
