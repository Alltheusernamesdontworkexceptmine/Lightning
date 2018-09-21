int startX=0;
int startY=150;
int endX=0;
int endY=150;
int beginX=0;
int beginY=150;
int finishX=0;
int finishY=150;
void setup()
{
  size(300,300);
  background(0);
  frameRate(10);
}
void draw()
{
  fill(0);
  rect(0,0,width,height);
  lightningBoltA();
  lightningBoltB();
}

void lightningBoltA()
{
  while(endX<300)
  {
    strokeWeight(3);
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    endX=startX+(int)(Math.random()*9)+1;
    endY=startY+(int)(Math.random()*19)-9;
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
  }
}

void lightningBoltB()
{
  while(finishX<300)
  {
    strokeWeight(2);
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    finishX=beginX+(int)(Math.random()*15)+1;
    finishY=beginY+(int)(Math.random()*20)-10;
    line(beginX,beginY,finishX,finishY);
    beginX=finishX;
    beginY=finishY;
  }
}

void mousePressed()
{
  background(255);
  startX=mouseX;
  startY=mouseY;
  endX=mouseX;
  endY=mouseY;
  beginX=mouseX;
  beginY=mouseY;
  finishX=mouseX;
  finishY=mouseY;
 
}
