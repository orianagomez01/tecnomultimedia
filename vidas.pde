class Vida {
  // PROPIEDADES - variables
  // variables para posición
  // variables para la imagen
  int x, y, tam, vidasinicio, vidas;

  //-- CONSTRUCTOR
  Vida() {
    vidas= 3;
    tam = width;
  }
  // -----------------------------------------------------
  // METODOS (funciones)

  void dibujar() {
    pushStyle();
    juego.textop("Vidas: " + vidas, x+tam/9, y+tam/19,1,26);
    popStyle ();
  }

  void pierdeVidas() {
    vidas = vidas - 1;
    //background(255, 255, 0);
  } 
  // --recicla a las vidas para volver a utilizarlas en otra partida (valor inicial) 
  void reciclarVidas() {
    vidasinicio = vidas;
  }
}
