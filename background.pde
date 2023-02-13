class Background{

  
  
  Background(int i){
     imageMode(CORNER);
      PImage bg = loadImage(String.format("data/hintergrund%d.jpeg", i));
      image(bg, 0, 0);
      PImage lighting = loadImage("data/lighting.png");
      image(lighting , 20 , 50);
   } 
   
   void change(int k){
     PImage bg = loadImage("data/hintergrund" + k + ".jpeg");
     image(bg, 0, 0);
   }
}
