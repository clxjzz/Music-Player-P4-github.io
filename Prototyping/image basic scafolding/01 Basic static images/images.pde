//Global Variabes
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float basketballX, basketballY, basketballWidth, basketballHeight;
PImage picBackground, picBasketball;
int picbasketballWidth, picbasketballHeight;
float basketballX_Changed, basketballY_Changed;
float picbasketballWidthChanged, picbasketballHeightChanged, biggerSide, smallerSide, ratio;
//
void setup() {
  size( 500, 100 ); //Landscape
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../../../../images/square/gyb basketball 2.jpg");
  basketballX = appWidth * 1/4;
  basketballY = appHeight * 1/4;
  basketballWidth = appWidth * 1/2;
  basketballHeight = appHeight * 1/2;
  picBasketball = loadImage("../../../images/square/gyb basketball 2.jpg");
  picbasketballWidthChanged = picBasketballWidth = 1920;
  picbasketballHeightChanged = picBasketballHeight = 1280;
  //
  //Image Compression
  biggerSide = ( picBasketballWidth > picBasketballHeight ) ? picBasketballWidth : picBasketballHeight ;
  smallerSide = ( picBasketballHeight < picBasketballWidth ) ? picBasketballHeight : picBasketballWidth ;
  ratio = biggerSide / smallerSide; //Ratio bigger than one, divide means smaller side, multiply means larger side
  println( biggerSide, smallerSide, ratio );
  if (basketballWidth > basketballHeight) { //DIV Landscape, } else {}
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( basketballX, basketballY, basketballWidth, basketballHeight );
}
//
void draw() {
  //Draw Image One Time, for testing
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  image( picBasketball, basketballX, basketballY, basketballWidthChanged, basketballHeightChanged );
  }
//
void mousePressed() {
}
//
void keyPressed() {
}
//
//End MAIN
