class Zoom
{
    float scale=1.5;
    float x=600;
    float y=400;
    boolean zoomIn = false;
    boolean zoomOut = false;
  void display()
  {



      lights();
      sun.show();
      sun.orbit();
      scale(scale);
      translate(-x,-y);   
      if(zoomIn == true)
      {
        scale*=1.01;
      }
      if(zoomOut == true)
      {
        scale/=1.01;
      }
  }
  void keyPressed()
    {
      if(keyCode == UP)
      {
        zoomIn=true;
        zoomOut=false;
      }
      if(keyCode == DOWN)
      {
        zoomIn=false;
        zoomOut=true;
      }
    }
    void keyReleased()
    {
      if(keyCode == UP)
      {
        zoomIn=false;
      }
      if(keyCode ==DOWN)
      {
        zoomOut=false;
      }
    }
}