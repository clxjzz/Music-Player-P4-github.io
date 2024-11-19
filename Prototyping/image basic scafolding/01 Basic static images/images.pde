//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float motorcycleX, motorcycleY, motorcycleWidth, motorcycleHeight;
PImage picBackground, picmotorcycle;
int picmotorcycleWidth, picmotorcycleHeight;
float motorcycleX_Changed, motorcycleY_Changed;
float picmotorcycleWidthChanged, picmotorcycleHeightChanged, biggerSide, smallerSide, ratio;
//
void setup() {
  size( 500, 700 ); //Landscape
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../../Images/Square/basketball.jpg");
  motorcycleX_Changed = motorcycleX = appWidth * 1/4;
  motorcycleY_Changed = motorcycleY = appHeight * 1/4;
  motorcycleWidth = appWidth * 1/2;
  motorcycleHeight = appHeight * 1/2;
  picmotorcycle = loadImage("../../Images/Landscape/motorcycle.jpg");
  picmotorcycleWidthChanged = picmotorcycleWidth = 894;
  picmotorcycleHeightChanged = picmotorcycleHeight = 894;
  //
  //Image Compression
  biggerSide = ( picmotorcycleWidth > picmotorcycleHeight ) ? picmotorcycleWidth : picmotorcycleHeight ;
  smallerSide = ( picmotorcycleHeight < picmotorcycleWidth ) ? picmotorcycleHeight : picmotorcycleWidth ;
  ratio = biggerSide / smallerSide; //Ratio bigger than one, divide means smaller side, multiply means larger side
  println( "Big Side:", biggerSide, "\tSmall Side:", smallerSide, "\tRatio:", ratio );
  /* Algorithm
   - Establish Landscape or Portrait of DIV
   - Note: I always fill smaller side of DIV, then calculate larger side of DIV
   - Hardcode if ratio will be >1 or <1 ... influences * or /
   - In the image, decide if calculating the larger side or the smaller side
   */
  if ( motorcycleWidth > motorcycleHeight ) { //DIV Landscape, find larger side
    picmotorcycleHeightChanged = motorcycleHeight;
    picmotorcycleWidthChanged = ( picmotorcycleWidth > picmotorcycleHeight ) ? picmotorcycleWidthChanged / ratio : picmotorcycleWidthChanged * ratio;
    println( "Inside If-true:", picmotorcycleWidthChanged );
  } else { //DIV Portrait
    picmotorcycleWidthChanged = motorcycleWidth;
    picmotorcycleHeightChanged = ( picmotorcycleWidth > picmotorcycleHeight ) ? picmotorcycleWidthChanged / ratio : picmotorcycleWidthChanged * ratio;
    println( "Inside If-false:", picmotorcycleHeightChanged );
  }
  println( "Changed Width:", picmotorcycleWidthChanged, "\tChanged Height:", picmotorcycleHeightChanged );
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( motorcycleX, motorcycleY, motorcycleWidth, motorcycleHeight );
}
//
void draw() {
  //Draw Image One Time, for testing
  //image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //image( picmotorcycle, motorcycleX_Changed, motorcycleY_Changed, picmotorcycleWidthChanged, picmotorcycleHeightChanged );
}
//
void mousePressed() {
}
//
void keyPressed() {
}
//
//End MAIN
