class Planet
{

  float radius;
  float angle;
  float distance;
  float orbitspeed;
  Planet[] planets;
  float[] ary={30,60,70,50,120,100,80,70,30};
  float[] ary1={150,260,370,460,610,750,860,970,1040};
  PVector v;
  boolean a=false;
  PShape im;
  Planet(float r, float d, PImage img)
  {
    radius=r;
    distance=d;
    v = PVector.random3D();
    v.mult(distance);
    angle=random(TWO_PI);
    orbitspeed=random(0.01,0.02);
    
    noStroke();
    noFill();
    im=createShape(SPHERE,radius);
    im.setTexture(img);
  }
  
  void orbit()
  {
    angle = angle + orbitspeed;
    if(planets!=null)
    {
      for(int i=0; i<planets.length; i++)
      {
        planets[i].orbit();
      }
    }
  }  
  
  void NewSpawn(int total)
  {
    int i;
    planets = new Planet[total];
    for(i=0; i<planets.length; i++)
    {
      float r =ary[i];
      float d =ary1[i];
      planets[i]= new Planet(r,d,img[i+1]);
      
      float b=dist(mouseX,mouseY,r,r);
      if(b<d/2)
      {
        a=true;
      }
      
    }
  }

  void show()
  {
    pushMatrix();
    noStroke();
    PVector v1 = new PVector(1,0,1);
    PVector p = v.cross(v1);
    rotate(angle,p.x,p.y,p.z);
    translate(v.x,v.y,v.z);
    fill(255);
    shape(im);
    fill(#804305);
    ellipse(0,0,100,100);
    if(planets!=null)
    {
      for(int i=0; i<planets.length; i++)
      {
        planets[i].show();
      }
    }
    
    popMatrix();
  }
  void star()
  {

    for  (int i = 1; i < 400; i++) 
    {
      point(random(1200),random(800));
    }
  }

  void mousePressed()
  {
    if(a)
    {
      print(1);
    }
  }
}