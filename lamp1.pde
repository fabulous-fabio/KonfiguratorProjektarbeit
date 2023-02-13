class Lamp {
  int lampwidth;
  int lampheight;
  int lampy;
  int lampx;
  color c, ac;
  PImage LampImg, CutImage;
  
  Lamp(int x, int y, int w, int h, color col, color acc) {
    this.lampwidth = w;
    this.lampheight = h;
    this.lampx = x;
    this.lampy = y;
    this.c = col;
    this.ac = acc;
    this.LampImg  = loadImage("data/Lampenschirm.png");
    this.CutImage = loadImage("data/Lampenschirm-ausgeschnitten.png");
    //fill(c);
     rectMode(CENTER);
    //cable
    noStroke();
    fill(128,128,128);
    rect(lampx, lampy/2, 7, lampy);
      imageMode(CENTER);
    // open lamp images
      tint(ac);
      LampImg.resize(lampwidth, lampheight);
      image(LampImg, lampx, lampy);
      
      tint(c);
      CutImage.resize(lampwidth+3, lampheight+4);
      image(CutImage, lampx, lampy);
      tint(255, 255);
      //arc((screenwidth/2) - ((len+1) *
    //arc((screenwidth/2), lampy, lampwidth, lampheight, radians(180), radians(360));
  }
  
  int changeWidth() {
    if (lampwidth >= 70 && lampwidth <= 400){
      if ((mouseX - lampy) >= 70 && (mouseX - lampy) <= 400){
       lampwidth = (mouseX - lampy);
      }
    } else if (lampwidth < 70){
      lampwidth = 70;
    } else if (lampwidth > 400) {
      lampwidth = 400;
    }
    return lampwidth;
  }
  
  int changeHeight(){
    if (lampheight >= 70 && lampheight <= 400){
      if (mouseY >= 150 && mouseY <= 400 && lampy - (lampheight/2) >= 150){
       //lamphBefore = lampheight;
       lampheight = mouseY;
      }
    } else if (lampheight < 70){
      lampheight = 70;
    } else if (lampheight > 400) {
      lampheight = 400;
    }
    return lampheight;
  }
  
  int changeY(){
    if (lampy >= 70 && lampy <= 600 &&(mouseY >= 70) && (mouseY + (lampheight/2) <= 400)){
       lampy = (mouseY + (lampheight/2));
    } else if (lampy < 70){
      lampy = 70;
    } else if (lampy > 400) {
      lampy = 400;
    }
    return lampy;
  }
  
  
  color changeColor(color c) {
    return c;
  }
}
