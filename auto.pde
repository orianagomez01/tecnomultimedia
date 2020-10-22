class Auto {
  //ENEMIGOS!!
  // PROPIEDADES - variables
  // variables para posición
  float x, y, tam, vel, dir;
  // variables para la imagen
  PImage enemigos;
  boolean choque;

  // -----------------------------------------------------
  // CONSTRUCTOR > el "setup de la clase"
  Auto () {
    // inicializar las propiedades/variables
    x = random(260, 550);
    y = random(-200, -tam/2);
    vel = random( 2, 4 );
    dir = random(1, 3);
    tam= width/1;
    
    // IMAGENES
    enemigos = loadImage ("auto.png");
    choque= false;
  }
  // -----------------------------------------------------
  // METODOS (funciones)

  void actualizar() {
    // -- llama a reciclar() a los autos
    if ( y > height) {
      reciclar();
    }
    y += vel;
  }

  void dibujar () {   
    if (!choque) { // si NO CHOCAN
      image (enemigos, x, y);
    } else { // Si chocan
      y = height; 
      dir = 0;
    }
  }
  
    
    void reciclar() { 
      y = random(-100, -tam/2);
    }
    void chocarAutoyJugador () {
      choque= true;
    }
    
  }
