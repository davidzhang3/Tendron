Tendril[] a;
public class Cluster
{
  public final static int NUM_STEMS = 7; //number of tendrils per cluster

  public Cluster(int len, double x, double y)
  {   
    a = new Tendril[7];
    for (int i = 0; i < a.length; i++) {
      a[i] = new Tendril(len, (double)(Math.random()*((2*Math.PI)/7)*i), (double)x, (double)y);
      a[i].show();
    }
  }
}
