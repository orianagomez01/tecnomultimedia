//BOTONES Y RECTÁNGULOS DE OPCIONES
void boton (int x, int y, int alto, int ancho, int i) {
  pushStyle (); 
  fill (i);
  rect (x, y, alto, ancho);
  popStyle ();
}

// TEXTOS DE NARRACIÓN - CLICK Y OPCIONES
void textod (String texto, int x, int y, int i) {
  pushStyle (); 
  fill (255);
  textAlign (CENTER, CENTER);
  textSize (pX(tam/2));
  textFont (pfuente[i]);
  text (texto, x, y);
  popStyle ();
}

// PANTALLAS 
void pantallas (int i) {
  image (pimagenes[i], 0, 0, width, height);
}

// POSICIÓN - FLECHAS ADELANTE= 0 (pX(720)) FLECHA ATRÁS=1 (640)
void flechad (int j, int x) {
  image (pflechas[j], pX(x), pY(545), pX(70), pY(40));
}

//BOTONES
boolean botcon (int x, int y, int ancho, int alto) {
  if (mouseX>x && mouseX < x+ancho && mouseY>y && mouseY<y+alto) {
    return true;
  } else {
    return false;
  }
}

//ADAPTAR A LA PANTALLA

int pX(int valor) {
  return round(map(valor, 0, 800, 0, width));
}

int pY(int valor) {
  return round(map(valor, 0, 600, 0, height));
}
