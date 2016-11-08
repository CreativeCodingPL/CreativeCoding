void setup()
{
     size(500, 500);
     strokeWeight(1);
     stroke(0, 100);
     noFill();
     frameRate(3);
}

void draw()
{
     background(255);  
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