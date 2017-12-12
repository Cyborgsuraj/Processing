class Color
{
  int r;       // red color
  int g;       // green color
  int b;      // blue color
  int rectx;  // pallete x pos
  int recty;  // pallete y pos
  int rectsizex; // palette x dim
  int rectsizey;  // palette y dim
  int stroke;    // stroke weight
  int viewportTwoX; // viewport 2 x dim
  int viewportTwoY; // viewport 2 y dim
  int viewportWidth; // viewport x dim
  int viewportHeight;  // viewport y dim
  PImage sav;


  Color()
  {
    rectx = displayWidth/2-90;
    recty = displayHeight - 95;
    r = 0;
    g = 0;
    b = 0;
    rectsizex = 50;
    rectsizey = 50;
    stroke = 2;
    viewportTwoX = displayWidth/2;
    viewportTwoY = 0;
    viewportWidth = displayWidth/2;
    viewportHeight = displayHeight;
    sav = get(0, 0, viewportWidth+500, viewportHeight-100);
  }

  void drawline()
  {
    noFill();
    //noStroke();   // needs to be noStroke();
    rect(0, 0, viewportWidth+500, viewportHeight-100);   //v1
    fill(255);
    //text("viewport 1", viewportWidth/2, viewportHeight/2);   

    fill(150);
    strokeWeight(0.5);
    rect(0, viewportHeight-100, displayWidth/2-100, displayHeight);   //v5

    fill(150);
    strokeWeight(0.5);
    rect(displayWidth/2-100, viewportHeight-100, displayWidth, displayHeight);  //v4

    fill(150);
    strokeWeight(0.5);
    rect(0, 0, displayWidth, displayHeight/2-500 );  //v4


    println("x" + mouseX + "\ny" + mouseY);
    if (mousePressed == true)
    { 
      stroke(r, g, b);
      strokeWeight(stroke);
      line(mouseX, mouseY, pmouseX, pmouseY);
      //point(mouseX,mouseY);
    }

    if (mousePressed)
    {
      if (mouseX > rectx+0 && mouseX <rectx+0+rectsizex && mouseY > recty && mouseY < recty+rectsizey)
      {
        r = 0; 
        g = 0; 
        b = 0;
        println("Line color changed to black");  //black
      }
    }

    if (mousePressed)
    {
      if (mouseX > rectx+60 && mouseX <rectx+60+rectsizex && mouseY > recty && mouseY < recty+rectsizey)
      {
        r = 255; 
        g = 0; 
        b = 0;
        println("Line color changed to red"); // red
      }
    }

    if (mousePressed)
    {
      if (mouseX > rectx+120 && mouseX <rectx+120+rectsizex && mouseY > recty && mouseY < recty+rectsizey)
      {
        r = 0; 
        g = 255; 
        b = 0;
        println("Line color changed to green"); //green
      }
    }

    if (mousePressed)
    {
      if (mouseX > rectx+180 && mouseX <rectx+180+rectsizex && mouseY > recty && mouseY < recty+rectsizey)
      {
        r = 0; 
        g = 255; 
        b = 255;
        println("Line color changed to blue"); //blue
      }
    }

    if (mousePressed)
    {
      if (mouseX > rectx+240 && mouseX <rectx+240+rectsizex && mouseY > recty && mouseY < recty+rectsizey)
      {
        r = 160; 
        g = 160; 
        b = 160;
        println("Line color changed to grey"); //grey
      }
    }

    if (mousePressed)
    {
      if (mouseX > rectx+300 && mouseX <rectx+300+rectsizex+140 && mouseY > recty && mouseY < recty+rectsizey)
      {
        r = 255; 
        g = 0; 
        b = 127;
        println("Line color changed to pink"); //pink
      }
    }
  }

  void palette()
  {


    strokeWeight(2);
    fill(0, 0, 0);  //black
    rect(rectx+0, recty, rectsizex, rectsizey);

    fill(255, 0, 0);  //red
    rect(rectx+60, recty, rectsizex, rectsizey);

    fill(0, 255, 0);  //green
    rect(rectx+120, recty, rectsizex, rectsizey);

    fill(0, 255, 255); //blue
    rect(rectx+180, recty, rectsizex, rectsizey);

    fill(160, 160, 160); //grey
    rect(rectx+240, recty, rectsizex, rectsizey);

    fill(255, 0, 127); //pink
    rect(rectx+300, recty, rectsizex, rectsizey);
  }

  void linestroke()
  {

    strokeWeight(2);// stroke 2
    fill(255);
    rect(rectx+0, displayHeight/2-555, rectsizex, rectsizey);
    strokeWeight(10);
    point(rectx+24, displayHeight/2-528); 


    strokeWeight(2);// stroke 2
    fill(255);
    rect(rectx+60, displayHeight/2-555, rectsizex, rectsizey);
    strokeWeight(12);
    point(rectx+24+60, displayHeight/2-528); 


    strokeWeight(2);// stroke 2
    fill(255);
    rect(rectx+120, displayHeight/2-555, rectsizex, rectsizey);
    strokeWeight(14);
    point(rectx+24+120, displayHeight/2-528); 


    strokeWeight(2);// stroke 2
    fill(255);
    rect(rectx+180, displayHeight/2-555, rectsizex, rectsizey);
    strokeWeight(16);
    point(rectx+24+180, displayHeight/2-528); 


    strokeWeight(2);// stroke 2
    fill(255);
    rect(rectx+240, displayHeight/2-555, rectsizex, rectsizey);
    strokeWeight(18);
    point(rectx+24+240, displayHeight/2-528); 


    strokeWeight(2);// stroke 2
    fill(255);
    rect(rectx+300, displayHeight/2-555, rectsizex, rectsizey);
    strokeWeight(20);
    point(rectx+24+300, displayHeight/2-528);


    if (mousePressed)
    {
      if (mouseX > rectx+0 && mouseX <rectx+0+rectsizex && mouseY > displayHeight/2-555 && mouseY < displayHeight/2-555+rectsizey)
      {
        stroke = 2;
        println("stroke 2");  //stroke 2
      }
    }

    if (mousePressed)
    {
      if (mouseX > rectx+60 && mouseX <rectx+60+rectsizex && mouseY > displayHeight/2-555 && mouseY < displayHeight/2-555+rectsizey)
      {
        stroke = 4;
        println("stroke 4");  //stroke 4
      }
    }

    if (mousePressed)
    {
      if (mouseX > rectx+120 && mouseX <rectx+120+rectsizex && mouseY > displayHeight/2-555 && mouseY < displayHeight/2-555+rectsizey)
      {
        stroke = 6;
        println("stroke 6");  //stroke 6
      }
    }

    if (mousePressed)
    {
      if (mouseX > rectx+180 && mouseX <rectx+180+rectsizex && mouseY > displayHeight/2-555 && mouseY < displayHeight/2-555+rectsizey)
      {
        stroke = 8;
        println("stroke 8");  //stroke 8
      }
    }

    if (mousePressed)
    {
      if (mouseX > rectx+240 && mouseX <rectx+240+rectsizex && mouseY > displayHeight/2-555 && mouseY < displayHeight/2-555+rectsizey)
      {
        stroke = 10;
        println("stroke 10");  //stroke 10
      }
    }

    if (mousePressed)
    {
      if (mouseX > rectx+300 && mouseX <rectx+300+rectsizex && mouseY > displayHeight/2-555 && mouseY < displayHeight/2-555+rectsizey)
      {
        stroke = 12;
        println("stroke 12");  //stroke 12
      }
    }
  }

  void clear()
  {
    strokeWeight(2);
    fill(255);
    rect(rectx-210, recty, rectsizex+50, rectsizey);
    fill(0, 0, 0);
    textSize(30);
    text("Clear", rectx-198, recty+35); 

    if (mousePressed)
    {
      if (mouseX > rectx-210 && mouseX <rectx-210+rectsizex+50 && mouseY > recty && mouseY < recty+rectsizey)
      {
        background(255);
        println("Cleared"); //clear
      }
    }
  }

  void eraser()
  {
    fill(255, 255, 255); //eraser
    rect(rectx+360, recty, rectsizex, rectsizey);
    textSize(30);
    fill(0);
    text("E", displayWidth-76, displayHeight-60);

    if (mousePressed)
    {
      if (mouseX > rectx+360 && mouseX <rectx+360+rectsizex+140 && mouseY > recty && mouseY < recty+rectsizey)
      {
        r = 255; 
        g = 255; 
        b = 255;
        stroke = 40;
        println("Eraser"); //pink
      }
    }
  }
}