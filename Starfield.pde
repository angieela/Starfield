Particle a = new Particle();
void setup()
{
  size(500,500);
}
void draw()
{
  background(0);
  a.show();
  a.move();
}
class Particle
{
   double x, y, speed, angle;
   int colorr;
   Particle()
   {
       x = 320;
       y = 240;
       double angle1 = (int)(Math.random()*2);
       angle = angle1 * Math.PI;
       speed = (int)(Math.random()*10);
   }
   void move()
   {
     x = Math.cos(speed*angle + x);
     y = Math.sin(speed*angle + y);
   }
   void show()
   {
     colorr = (int)(Math.random()*255);
     fill(colorr);
     ellipse ((float)x,(float)y,20,20);
   }
}

class OddballParticle //inherits from Particle
{
  //your code here
}


