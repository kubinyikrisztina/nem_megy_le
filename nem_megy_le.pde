PImage alma;

color hatter;

float x;
float y;

float sebx =1;  //minusz-jobbrol-ballra, plusz- balrol-jobbra, nulla: egyenesen le
float seby =3; //minusz-felfelemegy, plusz-lefele megy

void setup() {  //állandó
  size(500, 500);
  alma=loadImage("apple_PNG40.png");
  x=width/2;
  y=height/2;
}

void draw() {  //mozgó

  hatter=color(mouseX, mouseY, (mouseX-mouseY)/2);


  background(hatter);
  image (alma, x, y, 100, 100); //magától mozog

  x=x+sebx;  
  y=y+seby; //gyorsaság

  if (x<0) {
    sebx=1;
  }
  if (y<0); 
  {
    seby=1;
  }
  if (x>400) {

    //az alma a kepernyo aljan van, akkor forduljon meg, megáll

    sebx=-2;
  }

  if (y>400) {
    seby=-1;
  }
}