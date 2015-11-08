SwordArtOnline [] Sinon;   
 void setup()   
 {      
   size(500, 500);
   background(160, 207, 195); 
   Sinon = new SwordArtOnline[50];
   for (int i = 0; i < Sinon.length; i++)
   {
     int myX = (int)(Math.random()*500);
     int myY = (int)(Math.random()*500);
     Sinon[i] = new SwordArtOnline(myX, myY);
   }
 }   
 void draw()   
 {    
   background(0);
   for (int i = 0; i < b.length; i++)
   {
     Sinon[i].move();
     Sinon[i].show();
   }   
 }  
 class SwordArtOnline    
 {     
   int x, y, r, g, b, s, foodR, foodG, foodB;
   SwordArtOnline(int bx, int by)
   {
     x = bx;
     y = by;
     r = (int)(Math.random()*128)+127;
     g = (int)(Math.random()*128)+127;
     b = (int)(Math.random()*128)+127;
     s = (int)(Math.random()*10)+5;
     foodR = (int)(Math.random()*128)+127;
     foodG = (int)(Math.random()*128)+127;
     foodB = (int)(Math.random()*128)+127;
   }
   void move()
   {
     boolean followMouse = true;
     x = x + (int)(Math.random()*3)-1;
     y = y + (int)(Math.random()*3)-1;
     // continuous screen
     if (x < 0)
       x = 500;
     else if (x > 500)
       x = 0;
     if (y < 0)
       y = 500;
     else if (y > 500)
       y = 0;
     // follow mouse
     if (keyPressed)
     {
      if (keyPressed)
       {
         followMouse = false;
       }
       else
       {
         followMouse = true;
       }
     }
     if (followMouse == true)
     {
       if (mouseX < x)
         x = x + (int)(Math.random()*3)-2;
       else if(mouseX > x)
         x = x + (int)(Math.random()*3);
       if (mouseY < y)
         y = y + (int)(Math.random()*3)-2;
       else if(mouseY > y)
         y = y + (int)(Math.random()*3);
     }
     // new location
     if (mousePressed == true)
     { 
       x = (int)(Math.random()*500+500);
       y = (int)(Math.random()*500+500);
       r = (int)(Math.random()*128)+127;
       g = (int)(Math.random()*128)+127;
       b = (int)(Math.random()*128)+127;
       s = (int)(Math.random()*100)+100;
       foodR = (int)(Math.random()*128)+127;
       foodG = (int)(Math.random()*128)+127;
       foodB = (int)(Math.random()*128)+127;
     }
   }
   void show()
   {
     strokeWeight(0.1);
     stroke(20);
     fill(r, g, b);
     ellipse(x, y, s, s);
   }
 } 