/* Static Text
- Texting Aspect Ratio
*/
// Global Variables
int appWidth, appHeight;
float titleX, titleY, titleWidth, titleHeight;
float superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight;
float footerX, footerY, footerWidth, footerHeight;
PFont titleFont, FooterFont, phraseFont;
color red=#B41024, white=#FFFFFF, resetDefalutInk=white;
int size;
String title= "How do I write text?", footer="This is bottom", phrase="ORA";
//
//Display
size( 500, 700 ); //Portrait CANVAS
appWidth = width;
appHeight = height;
//
//Text: Single Executed Code
//Fonts from OS (Operating System)
//String[] fontlist = PFont.list(); //To list all fonts available on OS
//printArray(fontlist); //For listing all possible fonts to choose from, then createfont
titleFont = createFont("Harrington", 55);
FooterFont =createFont("Arial", 55);
phraseFont =createFont("Playbill", 91);
//Population
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
rect( titleX, titleY, titleWidth, titleHeight );
rect( superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight );
rect( footerX, footerY, footerWidth, footerHeight );
//
//Drawing Text
fill(red); //Ink, hexidecimal copied from Color Selector
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
size = 50;//Change the number until it fits
textFont( titlefont, size);
text( title, titleX, titleY, titleWidth, titleHeight );
textFont( footerFont, size);
text( footerX, footerY, footerWidth, footerHeight );
textFont( phraseFont, size);
text( phrase, superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight );
