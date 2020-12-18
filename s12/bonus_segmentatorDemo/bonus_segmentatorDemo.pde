import geomerative.*;
import controlP5.*;

RFont font;
String DATA_PATH = "data/";
String text = "Yyy!";

ControlP5 cp5;
float pointsDistance = 1;
int UNIFORMSTEP = RCommand.UNIFORMSTEP;
int UNIFORMLENGTH = RCommand.UNIFORMLENGTH;
int ADAPTATIVE = RCommand.ADAPTATIVE;
int mode = UNIFORMSTEP;
boolean drawOriginal = false;
boolean drawOutput = true;
boolean drawPoints = true;
boolean loading = false;
float scaleFactor=1.0;

RShape shp;

void setup() {
  size(960, 540);
  smooth();
  RG.init(this);
  font = new RFont( DATA_PATH+"FreeSans.ttf", 230, RFont.CENTER );
  shp = font.toShape( text );
  cp5 = new ControlP5(this);
  cp5.addSlider("scaleFactor")
    .setPosition(10, 10)
      .setSize(515, 20)
        .setRange(0.00000001, 10)
          .setNumberOfTickMarks(41)
            .snapToTickMarks(true)
              .showTickMarks(false);
  cp5.addSlider("pointsDistance")
    .setPosition(10, 40)
      .setSize(515, 20)
        .setRange(0, 100)
          .setNumberOfTickMarks(101)
            .snapToTickMarks(true)
              .showTickMarks(false);
  cp5.addButton("save")
    .setPosition(922, 510)
      .setSize(28, 20);
  cp5.addCheckBox("dpoints")
    .setPosition(10, 70)
      .setSize(20, 20)
        .addItem("drawPoints", 100);
  cp5.addCheckBox("dsource")
    .setPosition(10, 100)
      .setSize(20, 20)
        .addItem("drawSource", 100);
  cp5.addCheckBox("doutput")
    .setPosition(10, 130)
      .setSize(20, 20)
        .addItem("drawOutput", 100);
  cp5.addRadioButton("radioButton")
    .setPosition(100, 70)
      .setSize(20, 20)
        .setSpacingRow(10)
          .addItem("UNIFORMSTEP", UNIFORMSTEP)
            .addItem("UNIFORMLENGTH", UNIFORMLENGTH)
              .addItem("ADAPTATIVE", ADAPTATIVE)
                .deactivateAll()
                  .activate(0)
                    .setNoneSelectedAllowed(false);
}
void draw() {
  background(#0896FF);
  if (mode == UNIFORMSTEP) {
    RCommand.setSegmentStep(pointsDistance);
    RCommand.setSegmentator(RCommand.UNIFORMSTEP);
  }
  else if (mode == UNIFORMLENGTH) {
    RCommand.setSegmentLength(pointsDistance);
    RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
  }
  else if (mode == ADAPTATIVE) {
    RCommand.setSegmentAngle(radians(pointsDistance));
    RCommand.setSegmentator(RCommand.ADAPTATIVE);
  }
  stroke(255);
  pushMatrix();
  scale(scaleFactor);
  translate(1/scaleFactor * width/2 - shp.width/2, 1/scaleFactor * (height/2 + font.size * scaleFactor) );
  strokeWeight(1/scaleFactor);
  noStroke();
  fill(255, 128);
  if (drawOriginal)
    RG.shape(shp);
  if (drawOutput) {
    noFill();
    stroke(255);
    RPolygon poly = shp.toPolygon();
    RShape pShp = RG.polygonize(shp);
    RG.shape(pShp);
  }
  if (drawPoints) {
    fill(255);
    stroke(#023450);
    for (int j=0;j<shp.children.length;j++) {
      RShape subshape = shp.children[j];
      RPoint[] pts = subshape.getPoints();
      for (int i=0;i<pts.length;i++) {
        rect(pts[i].x-1/scaleFactor, pts[i].y-1/scaleFactor, 2/scaleFactor, 2/scaleFactor);
      }
    }
  }
  popMatrix();
}
void save() {
  saveJSON("points.json");
}
void saveJSON(String fileName) {
  int pointsCount = 0;
  String json = "var shape = { \n  paths: [\n"; 
  for (int j=0;j<shp.children.length;j++) {
    json+="  { points :[\n";
    RShape subshape = shp.children[j];

    RPoint[] pts = subshape.getPoints();
    for (int i=0;i<pts.length;i++)
    {
      json+="        {x:"+pts[i].x+",y:"+pts[i].y+"},\n";
      pointsCount++;
    }
    json+="    ]\n  },\n";
  }
  json+="  ],\n  width : "+shp.width+",\n  height:"+shp.height+",\n  pointsCount:"+ pointsCount +" \n};";
  String[] tmp = {
    json
  };
  saveStrings(fileName, tmp);
}
void dpoints(float[] a) {
  if (a[0]>0)
    drawPoints=true;
  else
    drawPoints=false;
}
void dsource(float[] a) {
  if (a[0]>0)
    drawOriginal=true;
  else
    drawOriginal=false;
}
void doutput(float[] a) {
  if (a[0]>0)
    drawOutput=true;
  else
    drawOutput=false;
}
void radioButton(int a) {
  mode = a;
}
