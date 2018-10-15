void setup()
{
     size(500, 500);
     strokeWeight(1);
     stroke(0, 15);
     noFill();
     frameRate(60);
     background(255);  
}

void draw()
{
     beginShape();     
     curveVertex(random(500), random(500));   
     curveVertex(random(500), random(500));   
     curveVertex(random(500), random(500));   
     curveVertex(random(500), random(500));   
     curveVertex(random(500), random(500));   
     curveVertex(random(500), random(500));   
     curveVertex(random(500), random(500));
     endShape();
}