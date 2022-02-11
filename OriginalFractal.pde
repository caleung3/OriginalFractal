int time = millis();
public void setup()
{
  size(900,900);
  ellipseMode(CENTER);
  rectMode(CENTER);
}
public void draw()
{
  background(0);
  myFractal(450,450,800);
}
public void myFractal(int x, int y, int siz)
{
 int passedMillis = millis() - time; // calculates passed milliseconds
  if(passedMillis >= 150){
      time = millis();
      fill((int)Math.random()*255, (int)Math.random()*255,(int)Math.random()*255);  // if more than 215 milliseconds passed set fill color to red
  }
  ellipse(x,y,siz,siz-siz/5);
   passedMillis = millis() - time; // calculates passed milliseconds
  rect(x,y,siz/2,siz/2);
  if(siz > 10)
  {
    fill(255,182,193);
    myFractal(x-siz/2,y,siz/2);
    fill(255);
    myFractal(x+siz/2,y,siz/2);
    fill(173, 216, 230);
    myFractal(x, y-siz/3, siz/3);
    fill(255,255,153);
    myFractal(x,y+siz/3,siz/3);
    
  }
}
