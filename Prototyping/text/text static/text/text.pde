/* Static Text
- Texting Aspect Ratio
*/
// Global Variables
int appWidth, appHeight;
float titleX, titleY, titleWidth, titleHeight;
float superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight;
float footerX, footerY, footerWidth, footerHeight;
PFont titleFont, footerFont, phraseFont;
color red=#B41024, white=#FFFFFF, resetDefaultInk=white; //Not Night Mode Friendly
int size;
String title = "ZZZ", footer="bot", phrase="EZ";
//
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
titleFont = createFont("Cambria", 55); //Verify the font exists in Processing.Java
footerFont = createFont("Arial", 55);
phraseFont = createFont("Playbill", 55);
//
/* Population
*/
titleX = appWidth*1/10;
titleY = appHeight*1/10;
titleWidth = appWidth*8/10;
titleHeight = appHeight*1/10;
superCoolPhraseX = titleX; //Best Practice: change on formula
superCoolPhraseY = appHeight*4.5/10; //Ratio done last. How is this Centered Vertically?
superCoolPhraseWidth = titleWidth; //Best Practice
superCoolPhraseHeight = titleHeight; //Best Practice
footerX = titleX; //Best Practice
footerY = appHeight*8/10;
footerWidth = titleWidth; //Best Practice
footerHeight = titleHeight; //Best Practice
//DIVs
rect( titleX, titleY, titleWidth, titleHeight ); //Title Font
rect( superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight ); // Testing Aspect Ratio of Fonts
rect( footerX, footerY, footerWidth, footerHeight ); //Different Font
//
//Drawing Text
fill(red); //Ink, hexidecimal copied from Color Selector
textAlign(CENTER, TOP); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
size = 55; //Change the number until it fits
textFont( titleFont, size ); 
text( title, titleX, titleY, titleWidth, titleHeight );
textFont( footerFont, size ); 
text( footer, footerX, footerY, footerWidth, footerHeight );
textFont( phraseFont, size ); 
text( phrase, superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight );
