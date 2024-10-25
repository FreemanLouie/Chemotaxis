Bacteria [] colony;
int a = 0;
int b = 0; 
 void setup()   
 {     
   frameRate(60);
   size(500,500);
   background(255);
   colony = new Bacteria[500];
   for (int i = 0; i < colony.length; i++){
     colony[i] = new Bacteria();  
   }   
 }
 void draw()   
 {    
   background(0);
   for (int i = 0; i < colony.length; i++){
     colony[i].walk();
     colony[i].show();
   }   
 }  
 class Bacteria    
 {     
   int myX, myY, myColor;
   Bacteria()
   {
     myX = (int)(Math.random()*499);
     myY = (int)(Math.random()*499);
     myColor = ((Math.random()) > .5 ? color((int)(Math.random() * 200) + 100, 0, 0, 100) : color(0, 0, (int)(Math.random() * 255) + 100, 100));
   }
   void walk()
   {
    if(!mousePressed){
     if (myX < mouseX)
        a = 2;
     if (myX > mouseX)
        a = 4;
     if (myY < mouseY)
        b = 2;
     if (myY > mouseY)
        b = 4;
      myX += (int)(Math.random()*7)-a;
      myY += (int)(Math.random()*7)-b;
    }
    if(mousePressed){
     if (myX < mouseX)
       myX += (int)(Math.random()*2)-3;
     if (myX > mouseX)
       myX += (int)(Math.random()*2);
     if (myY < mouseY)
       myY += (int)(Math.random()*2)-3;
     if (myY > mouseY)
       myY += (int)(Math.random()*2);
    }
    if(myX >= 500 || myX <= 0) 
      myX = (int)(Math.random()*500);
    if(myY >= 500 || myY <= 0)
      myY = (int)(Math.random()*500);
   }
   void show()
   {  
     noStroke();
     fill(myColor);
     ellipse(myX,myY,30,30);
   }  
 }





