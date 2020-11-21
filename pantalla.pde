class Pantalla {
  float x, y, posx, posy;
  float cx, lx;
  float vel=8;
  PImage []img=new PImage[20];

  Pantalla () {
    y=340;
    x=0;
    cx=1000;
    lx=1450;
    posx=0;
    posy=0;
    cargarImagenes ();
  }

  // METODOS (funciones)
  void actfondo() {
    posx=posx-6;
    posx=0;
    posy=0;
  }
  void actualizar() {
    lx=lx-vel;
    if (lx<-500) {
      lx=1350;
      println("lx", lx);
    }
    x= x-vel;
    if (x <-400) {
      x=0;
    }

    cx=cx-vel;
    if (cx<-500) {
      cx=950;
    }
  }
  void dibujarFi() {
    background(255, 128, 192);  
    rect(width-width, height*0.75, width, height);
    fill(0);
    image(img[16], posx, height-height);
    posx=posx-6;
  }
  void dibujar() {
    image(img[17], x, height*0.56+4);
    image(img[18], cx, height/6);
    image(img[19], lx, height*0.34-4, width*0.25-2, height*0.19+4);
  }

  void dibujarFondo(int index) {
    image(img[index], 0, 0, width, height);
  }

  void dibujarFondo1 (int index) {
    image(img[index], 0, 0);
  }
  void dibujarImg (int index, float x, float y, float tam, float tam1) {
    image (img[index], x, y, tam, tam1);
  }

  void dibujarImg1 (int index, float x, float y) {
    image (img[index], x, y);
  }

  void dibujarRect (float x, float y, float tam, float tam1) {
    noStroke ();
    fill(100, 100, 255);
    rect(x, y, tam, tam1);
  }

  void dibujarEllipse (float x, float y, float tam, float tam1) {
    fill(0);
    ellipse(x, y, tam, tam1);
  }

  void cargarImagenes () {
    img[0]=loadImage("periodico.png");
    img[1]=loadImage("casa-simpson.jpg");
    img[2]=loadImage("CasaD.jpg");
    img[3]=loadImage("comedor.jpg");
    img[4]=loadImage("HabitBart.jpg");
    img[5]=loadImage("sofa.jpg");
    img[6]=loadImage("habita10.jpg");
    img[7]=loadImage("habitLisa.jpg");
    img[8]=loadImage("habit hm.jpg");
    img[9]=loadImage("todos.png");
    img[10]=loadImage("homero corre.png");
    img[11]=loadImage("nombre.png");
    img[12]=loadImage("grita.png");
    img[13]=loadImage("fue_0.png");
    img[14]=loadImage("th.jpg");
    img[15]=loadImage("15.png");
    img[16]=loadImage("comedor.jpg");
    img[17]=loadImage("CH.png");
    img[18]=loadImage("cuadro.jpg");
    img[19]=loadImage("lib.png");
  }
}
