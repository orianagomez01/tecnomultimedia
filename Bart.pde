class Bart{
  float bx;
  float y;
  int v;
  int tam,tam1;
  PImage B;
  Bart(){
    y=300;
    bx=2000;
    tam=39;
    tam1=122;
    v=1;
    B=loadImage("Bart-simpson.png");
  }
  void dibujar(){
    image(B,bx,y ,tam,tam1) ;
    bx=bx-v;
  }
  void actualizar(){
     y=300;
    bx=2000;
    v=1;
  }
}
