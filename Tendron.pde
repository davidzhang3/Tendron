public void setup()
{
  size(500, 500);  
  background(127);
  noLoop();
}

public void draw()
{
  background(255);
  Cluster c = new Cluster(150, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed()
{
  redraw();
}
