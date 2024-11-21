/* Static Text
- Texting Aspect Ratio
*/
// Global Variables
int appWidth, appHeight;
float titleX, titleY, titleWidth, titleHeight;
float superCoolPhraseX, superCoolPhraseY, superCoolPhraseWidth, superCoolPhraseHeight;
float footerX, footerY, footerWidth, footerHeight;
//
//Display
size( 500, 700 ); //Portrait CANVAS
appWidth = width;
appHeight = height;
//
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
