let px = new Array(10);
let py = new Array(10);
let index = 0;

function setup() {
  createCanvas( 600, 600 );
}

function draw() {
  background(220);

  beginShape();
  for( let i = 0; i < index; i++){
     vertex(px[i], py[i]);
     ellipse( px[i], py[i], 10, 10 );
  }
  endShape();
}

function mousePressed() {

  px[ index ] = mouseX;
  py[ index ] = mouseY;

  index = index + 1;
  if ( index > px.length - 1 ) {
   index = 0; 
  }
}