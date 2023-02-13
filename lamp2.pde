class LampWide {
  int lampwidth;
  int lampheight;
  int lampy;
  int lampx;
  int lamps;
  int l;
  color c, c2;
  PImage LampImg, barImg, CutImage;
  
  LampWide(int x, int y, color col, color col2, int len, int lampStyle) {
    this.lampwidth = 90;
    this.lampheight = 90;
    this.lampx = x;
    this.lampy = y;
    this.c = col;
    this.c2 = col2;
    this.l = len;
    this.lamps = lampStyle;
    
    
    // cables
    rectMode(CENTER);
    noStroke();
    fill(128,128,128);
     rect(lampx+55, lampy/2, 7, lampy);
    rect(lampx-55, lampy/2, 7, lampy);
    imageMode(CENTER);
    // bar
    barImg = loadImage(String.format("data/deckenleuchte-style-%d.png", lamps));
    barImg.resize((l+1) * 95, 22);
    image(barImg, lampx, lampy);
    imageMode(CORNER);
    for (int i = 0; i <= len; i++){
      fill(col2);
      int spacePerLight = (95-lampwidth)/2;
      // open lamp images
      LampImg  = loadImage("data/Lampenschirm.png");
      CutImage = loadImage("data/Lampenschirm-ausgeschnitten.png");
      int xLamp = lampx - ((len+1) * 95)/2 + (i * (lampwidth)) + (spacePerLight + ((2*i) * spacePerLight));
      tint(c, 255);
      LampImg.resize(lampwidth, lampheight);
      image(LampImg, xLamp, lampy-17);
      
      tint(c2, 255);
      CutImage.resize(lampwidth+4, lampheight+4);
      image(CutImage, xLamp-2, lampy-19);
      tint(255, 255);
      //arc((screenwidth/2) - ((len+1) * 95)/2 + (i * (lampwidth)) + (spacePerLight + ((2*i) * spacePerLight)) + (lampwidth/2), lampy + 11 +(lampheight/2), lampwidth, lampheight, radians(180), radians(360));
    }
  }
  
  int getWidth(){
    return (l+1) * 95;
  }
  
  int changeY(){
    if (lampy >= 90 && lampy <= 600 &&(mouseY >= 90) && (mouseY <= 400)){
       lampy = mouseY + 90;
    } else if (lampy < 90){
      lampy = 90;
    } else if (lampy > 400) {
      lampy = 400;
    }
    return lampy;
  }
}
