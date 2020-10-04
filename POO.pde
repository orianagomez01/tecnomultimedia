class Ellipses { 
  //VARIABLES
  float rad, rad2, x, y;

  //CONSTRUCTOR
  Ellipses (float rad_, float rad2_, float x_, float y_) { 
    x=x_;
    y=y_;
    rad=rad_;
    rad2=rad2_;
  }

//MÉTODOS (ACCIONES)
void dibujar() {
  pushStyle();
   noFill();
 stroke(255);
   ellipse (x, y, rad, rad2);
  popStyle();
}

void mover() {
  rad++;
  rad2= rad2 + 2;
}

void rotar () {
  rotate(rad);
}

}
