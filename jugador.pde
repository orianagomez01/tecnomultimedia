class Jugador { 
  // Propiedades o variables
  // Posición INICIAL
  float x, y, tam;
  //imagenes
  PImage img [] = new PImage [2];
  String estado;
 

  // Constructor
  Jugador () {
    estado = "jugar";
    // Inicializar posicion INICIAL
    x= width/2;
    y= height/1.1;
    tam = height/18;

    //cargar imagen de auto jugador y fondo
    for (int i=0; i < img.length; i++) {
      img [i]= loadImage ("autopista" +i+ ".png");
    }
  }

  // Metodos - funciones (acciones)
  // Mostrar el personaje principal (el auto)
  void dibujar (String estado_) {
    //cargar imagen de autopista y auto

    image (img[0], 0, 0);
    image (img[1], x, y);
    juego.cambiarEstado(estado_);
  }
  //void desbugear (Auto [] au) {
  //  for ( int i = 0; i < au.length; i++ ) {
  //    // DEBUG ----------------------------------------------------------------
  //    pushStyle();
  //    noFill();
  //    stroke( 255, 0, 0 );
  //    strokeWeight( 5 );
  //    //line (x, y, x, y);
  //    line (au[i].x, au[i].y, x, y); 
  //    stroke (50, 0, 0);
  //    line( x, y-tam/4, au[i].x, au[i].y );
  //    rect(x,y,tam,tam);
  //    //println( "x: " + x + " | y-t/4: " + (y-tam/4) ); 
  //    //println( "au[i].x: " + au[i].x + " | au[i].y: " + au[i].y ); 
  //    popStyle();
  //    // ----------------------------------------------------------------
  //  }
  

  //KEYPRESSED
  void moverArriba() {
    // Mover hacia arriba
    y -=3;
  }
  void moverDer() {
    //mover hacia derecha 
    x += 3;
  }
  void moverIzq() {
    //mover hacia izquierda
    x -= 3;
  }
  void moverAbajo() {
    // Mover hacia abajo
    y +=3;
  }
  
}
