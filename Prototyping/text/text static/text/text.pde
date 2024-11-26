/* Dynamic Text
 */
// Global Variables
int appWidth, appHeight;
float titleX, titleY, titleWidth, titleHeight;
float superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight;
float footerX, footerY, footerWidth, footerHeight;
PFont titleFont, footerFont, phraseFont;
color ink, red=#B41024, white=#FFFFFF, resetDefaultInk=white; //Not Night Mode Friendly
int size;
String title = "ZZZ", footer="BOT", phrase="EZ";
Boolean randomColour=false;
//
void setup()
{
  //Display
  size( 500, 700 ); //Portrait CANVAS
  appWidth = width;
  appHeight = height;
  //
  //Text: Single Executed Code
  //Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  titleFont = createFont("Cambria", 55);
  footerFont = createFont("Sylfaen", 55);
  phraseFont = createFont("Algerian", 55);
  //
  /* Population
   */
  titleX = appWidth*1/10;
  titleY = appHeight*1/10;
  titleWidth = appWidth*8/10;
  titleHeight = appHeight*1/10;
  superCoolPhraseX = titleX;
  superCoolPhraseY = appHeight*4.5/10;
  superCoolPhraseWidth = titleWidth;
  superCoolPhraseHeight = titleHeight;
  footerX = titleX;
  footerY = appHeight*8/10;
  footerWidth = titleWidth;
  footerHeight = titleHeight;
  //DIVs
  rect( titleX, titleY, titleWidth, titleHeight ); //Title Font
  rect( superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight ); // Testing Aspect Ratio of Fonts
  rect( footerX, footerY, footerWidth, footerHeight ); //Different Font
} //End setup
//
void draw()
{
  //Drawing Text
  fill(ink);
  textAlign(CENTER, TOP); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  ink = red;
  fill(ink);
  size = 77;
  textFont( titleFont, size );
  text( title, titleX, titleY, titleWidth, titleHeight );
  ink = red;
  fill(ink);
  size = 74;
  textFont( footerFont, size );
  text( footer, footerX, footerY, footerWidth, footerHeight );
  //
  ink = ( randomColour == true ) ? color( random(0, 256), random(256), random(256) ) : red ; //Ternary Operator
  //
  fill(ink);
  size = 83;
  textFont( phraseFont, size );
  text( phrase, superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight );
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
  if ( key=='C' || key=='c' )
  if ( randomColour == true ) {
    randomColour = false;
  }  else {
      randomColour = true;
  }
} //End keyPressed
//
//End MAIN
