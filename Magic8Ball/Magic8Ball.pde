String[] words;


String currWord = "";
float rot = 0;
float opacity = 255;
void setup()
{
  
  size(800,800);
  words = loadStrings("words.txt");
  println(words[6]);
}

void draw()
{
  background(200);
  
  fill(0);
  ellipse(width/2, height/2, 800, 800);
  textSize(55);
  textAlign(CENTER);
  fill(255);
  text("Magic Day Predictor", width/2, 140);
  
  
  stroke(255);
  strokeWeight(3);
  fill(30);
  ellipse(width/2, height/2, 300, 300);
  strokeWeight(1);
  
  pushMatrix();
    translate(width/2, height/2);
    rotate(rot);
    stroke(0);
    
    fill(#0D6CBC);
    triangle(0, 0 - 100, 0 - 100, 0 + 75, 0 + 100, 0 + 75);
    
    
    textSize(15);
    textAlign(CENTER);
    fill(255);
    text(currWord, 0, 0+ 30);
  popMatrix();
  
  noStroke();
  fill(30,30,30,opacity);
  ellipse(width/2, height/2, 250, 250);
  
  if(opacity > 0)
  {
    opacity -= 1.25;
  }
  
}

void keyPressed()
{
  if(key == ' ')
  {
    currWord = words[(int)random(words.length)];
    rot = random(0,TWO_PI);
    fade();
  }
}

void mousePressed()
{
  
    currWord = words[(int)random(words.length)];
    rot = random(0,TWO_PI);
    fade();
  
}
void fade()
{
  opacity = 255;
}