int startX = 0;
int startY = 0;
int endX = 0;
int endY = 0;
int randomX = (int)(Math.random() * 20 + 1);
int randomY = (int)(Math.random() * 20 + 1);
void setup()
{
  size(500,500);
  background(0);
}
void draw()
{
  frameRate(15);
  stroke(255);
  while (startX < 500) {
    endX = startX + (int)(Math.random() * 9 + 1);
    endY = startY + (int)(Math.random() * 20 + 1) - 5;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  fill(0,50);
  rect(0,0,500,500);
}
void mousePressed()
{
  startX = 0;
  startY = 0;
  endX = 0;
  endY = 0;

}
