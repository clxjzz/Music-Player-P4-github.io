/* META Data - Strings
 */
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
int appWidth, appHeight;
float jettX1, jettY1, jettWidth1, jettHeight1;
float jettX2, jettY2, jettWidth2, jettHeight2;
float jettX3, jettY3, jettWidth3, jettHeight3;
//
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
Audiojett[] playListTitlejett = new AudioPlayer[numberOfsongs];
Audiojett[] playListPositionjett = new AudioPlayer[numberOfsongs];
Audiojett[] playListTimeRemainingjett = new AudioPlayer[numberOfsongs];
Audiojett[] playListTotalTimejett = new AudioPlayer[numberOfsongs];
int currentSong = numberOfSong = numberOfSongs - numberOfSngs;
void setup() 
{
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  //Population
  jettX1 = appWidth*1/10; //Title
  jettY1 = appHeight*4/10;
  jettWidth1 = appWidth*8/10;
  jettHeight1 = appHeight*1/10;
  jettX2 = appWidth*1/10; // Song position
  jettY2 = appHeight*3/10;
  jettWidth2 = appWidth*2/10;
  jettHeight2 = appHeight*1/10;
  jettX3 = appWidth*5/10; //Total Song Length | Time Remaining
  jettY3 = appHeight*5/10;
  jettWidth3 = appWidth*4/10;
  jettHeight3 = appHeight*1/10;
  //DIV //X, Y, Width, Height
  rect( jettX1, jettY1, jettWidth1, jettHeight1 );
  rect( jettX2, jettY2, jettWidth2, jettHeight2 );
  rect( jettX3, jettY3, jettWidth3, jettHeight3 );
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN
