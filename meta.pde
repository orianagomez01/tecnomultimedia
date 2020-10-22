class Meta {
  //PROPIEDADES
  float x, y, tam;
  PImage meta;
  boolean tocar;

  //CONSTRUCTOR
  Meta () {
    x = width/3.1;
    y= 0;
    tam= height/8;
    
    tocar = false;

    // IMAGENES
    meta = loadImage ("meta.png");
  }

  void dibujar () {
    //cargar imagen meta final
    image (meta, x, y);
  }
  //PARA GANAR
  void tocarJugadoryRecta () {
    tocar= true;
  }
  
}
