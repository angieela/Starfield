Particle[] a = new Particle[500];
void setup()
{
  size(500,500);
   for(int i = 0; i < a.length; i ++)
  {
    a[i]= new Particle();
  }
     for(int i = 0; i < 2; i ++)
  {
    a[i]= new Oddball();
  }
}
void draw()
{
  background(0);
  for(int i = 0; i < a.length; i ++)
  {
  a[i].show();
  a[i].move();
  }
}

class Particle
{
   double x, y, speed, angle,angle1;
   int colorr, ;
   Particle()
   {
       x = 250;    
       y = 250;
       angle1 = (float)(Math.random()*3);
       angle = angle1 * Math.PI;
       speed = (Math.random()*10);
       colorr = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
   }
   
   void move()
   {
     x = x + Math.cos(angle)*speed;
     y = y + Math.sin(angle)*speed;
   }
   void show()
   {
     
     fill(colorr);
     ellipse ((float)x,(float)y,20,20);
   }
}

class Oddball extends Particle //inherits from Particle
{
  Oddball()
  {
    
  }
}

