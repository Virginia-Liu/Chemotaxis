class Bacteria
{
  int myX,myY,myColor;
  Bacteria()
  {
    myX=((int)(Math.random()*500));
    myY= ((int)(Math.random()*500));
    myColor = color(((int)(Math.random()*255)),((int)(Math.random()*255)), ((int)(Math.random()*255)));
  }
  void move()
  {
     if (mouseX>myX)
  myX = myX + (int)(Math.random()*5)-1;
  else
  myX = myX + (int)(Math.random()*5)-3;
    if (mouseY>myY)
  myY = myY + (int)(Math.random()*5)-1;
  else
  myY = myY + (int)(Math.random()*5)-3;
  }
  void show()
  {
    fill(myColor);
    ellipse(myX,myY,50,50);
  }
}
Bacteria[] colony;
void setup()
{
  size(500,500);
  colony = new Bacteria[50];
  for (int i = 0; i < colony.length;i++)
  {colony[i]= new Bacteria();}
}
void draw ()
{
  background (0);
   for (int i = 0; i < colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
  }
}
