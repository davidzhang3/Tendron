class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments;
  private double myAngle, myX, myY;

  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, double x, double y)
  {
    myNumSegments = len;
    myX = x;
    myY = y;
    myAngle = theta;
  }
  public void show()
  { 
    double endX, endY, startX, startY;
    stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    ;
    startX = myX;
    startY = myY;
    for (int i = 0; i < myNumSegments; i++) {
      myAngle = myAngle + (double)(Math.random()*0.4)-0.2;
      endX = startX + Math.cos(myAngle);
      endY = startY + Math.sin(myAngle);
      line((float)startX, (float)startY, (float)endX, (float)endY);
      startX = (double)endX;
      startY = (double)endY;
    }
    if (myNumSegments >= 5) {
      Cluster c = new Cluster(myNumSegments/3, startX, startY);
    }
  }
}
