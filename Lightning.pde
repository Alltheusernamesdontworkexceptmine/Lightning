int startX=0;
int startY=150;
int endX=0;
int endY=150;
void setup()
{
  size(300,300);
  strokeWeight(2);
}
void draw()
{
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  line(startX,startY,endX,endY);
  startX=startX+(int)(Math.random()*10);
  startY=startY+(int)(Math.random()*18)-9;
  endX=startX+(int)(Math.random()*10);
  endY=startY+(int)(Math.random()*18)-9;
  
}
void mousePressed()
{

}
