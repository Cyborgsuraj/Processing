import android.app.Activity;
import android.content.Context;
import android.os.Vibrator;
Color col;
PImage sav;
Activity act;

void setup()
{
  size(displayWidth, displayHeight);   // set full size of the phone display
  //fullScreen();
  background(255);                     // set drawing area as white
  col = new Color();                   // creating object for color class
  smooth(16);       // anti-aliasing
  act = this.getActivity();
}

void draw()
{
  col.drawline();
  col.linestroke();
  col.palette();
  col.clear();
  saveImage();
  col.eraser();
}

void saveImage()
{

  strokeWeight(2);// stroke 2
  fill(255);
  rect(displayWidth/2-90-210, displayHeight/2-555, 100, 50);
  fill(0, 0, 0);
  textSize(30);
  text("Save", displayWidth/2-90-192, displayHeight/2-520);

  if (mousePressed)
  {
    if (mouseX > displayWidth/2-90-210 && mouseX <displayWidth/2-90-210+50+50 && mouseY > displayHeight/2-555 && mouseY < displayHeight/2-555+50)
    {
      saveFrame("//sdcard/DCIM/Camera/draw-####.png");
      Vibrator vibrer = (Vibrator)   act.getSystemService(Context.VIBRATOR_SERVICE);
      vibrer.vibrate(100);
      println("Saved");
    }
  }
}