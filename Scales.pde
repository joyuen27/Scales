boolean shift = true;
void setup(){
  size(1000,1000);
}
void draw(){
  noLoop();
  for (int shapeY = -100; shapeY <= 1100; shapeY += 100){
      for (int shapeX = -160; shapeX <= 1120; shapeX += 160){
        if (shift == true)
          shape(shapeX + 80, shapeY);
        else
          shape(shapeX,shapeY); 
       }
     if (shift == true)
       shift = false;
      else
        shift = true;
    }
}
void shape(int x, int y){
  //rgb
  float R,G,B;
  R = (float)Math.random()*255;
  G = (float)Math.random()*255;
  B = (float)Math.random()*255;
  fill(R,G,B);
  
  //middle
  noStroke();
  rect(x-50,y+45,100,70);
  stroke(0);
  strokeWeight(10);
  
  //sides
  fill(R,G,B);
  bezier(x - 50,y + 40,x - 90, y + 80, x - 90,y + 100,x - 50,y + 120);
  bezier(x + 50,y + 40,x + 90, y + 80, x + 90,y + 100, x + 50,y + 120);
  
  //different rgb values
  R = (float)Math.random()*255;
  G = (float)Math.random()*255;
  B = (float)Math.random()*255;
  fill(R,G,B);
  
  //top and bottom
  beginShape();
  curveVertex(x,y);
  curveVertex(x,y);
  curveVertex(x + 50,y + 40);
  curveVertex(x,y + 80);
  curveVertex(x + 50,y + 120);
  curveVertex(x,y + 160);
  curveVertex(x,y + 160);
  endShape();
  beginShape();
  curveVertex(x,y);
  curveVertex(x,y);
  curveVertex(x - 50,y + 40);
  curveVertex(x,y + 80);
  curveVertex(x - 50,y + 120);
  curveVertex(x,y + 160);
  curveVertex(x,y + 160);
  endShape();
}
