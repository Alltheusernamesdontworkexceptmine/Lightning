int startX=0;
int startY=150;
int endX=0;
int endY=150;
void setup()
{
  size(300,300);
  background(0);
}
void draw()
{
  //fill(0);
  //rect(0,0,width,height);
  while(endX<300)
  {
    strokeWeight(2);
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    endX=startX+(int)(Math.random()*9)+1;
    endY=startY+(int)(Math.random()*19)-9;
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
  }
}
void mousePressed()
{
  background(0);
  startX=mouseX;
  startY=mouseY;
  endX=mouseX;
  endY=mouseY;
}
