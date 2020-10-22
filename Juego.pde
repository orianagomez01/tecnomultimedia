class Juego {

  //PROPIEDADES
  //estado = menú, jugar, ganar, perder
  String estado;
  int cant= 5;
  float x, y, tam;
  //FUENTES
  PFont [] pfuente = new PFont [3];
  Menu menu;
  //Jugador jugador;
  Jugador jugador;
  //auto auto;
  Auto [] auto = new Auto[cant];
  //vida(s);
  Vida vida;
  //RECTA FINAL
  Meta meta;

  //CONSTRUCTOR
  Juego () {

    //CARGAR FUENTES - FUENTE0 (TITULO E INTERACCIONES)- FUENTE1 TITULO DE VIDAS- FUENTE2(GANAR O PERDER)

    pfuente [0]= loadFont("NiagaraSolid-Reg-60.vlw");
    pfuente[1]=loadFont ("Dialog.plain-48.vlw");
    pfuente[2]= loadFont ("Dialog.bold-48.vlw");

    tam=width/2;
    //estado = "menú";
    //inicializo los objetos: jugador, autos, vidas
    estado ="inicio";
    //inicializar el objeto
    menu= new Menu();
    jugador= new Jugador ();
    vida = new Vida ();
    for (int i=0; i<auto.length; i++) {
      auto[i] = new Auto();
    }
    meta= new Meta ();
  }

  //MÉTODOS
  void actualizar() {
    for (int i=0; i<cant; i++) {
      auto[i].actualizar();
    }
  }
  void dibujar() {
    //estados
    // --llamar a los metodos dibujar de mis objetos
    menu.dibujar();
    if ( estado.equals ("jugar")) {
      //jugador.dibujar
      jugador.dibujar("jugar");
      for (int i=0; i<cant; i++) {
        auto[i].dibujar();
      } 
      perder();
      ganar();
      vida.dibujar();
            meta.dibujar();
      //jugador.desbugear(auto);
      //meta.desbugear (jugador);
    }
  } 
  void cambiarEstado (String e) {
    estado= e;
  }
  void resetear() {
    vida.reciclarVidas();
  }

  void teclas (int tecla) {
    //PASAR DE MENU (INICIO) A JUEGO
    if (tecla== ENTER && estado.equals ("inicio")) {
      jugador.dibujar("jugar");
    }

    //MOVERPERSONAJE
    if (tecla==RIGHT) {
      jugador.moverDer();
    }
    if (tecla==LEFT) {
      jugador.moverIzq();
    }
    if (tecla==UP) {
      jugador.moverArriba();
    }
    if (tecla==DOWN) {
      jugador.moverAbajo();
    }
  }

  void perder () {
    //COLISIÓN!!!
    //UN FOR PARA EL ARREGLO
    for (int i=0; i<cant; i++) {
      // random(260, 550) > width/2 && random(260, 550) < width/2 + width/8 
      // && random(-200, -tam/2) > height/1.2 && random(-200, -tam/2) < height/1.2 + width/8 
      boolean contacto = auto[i].x > jugador.x && auto[i].x < jugador.x + jugador.tam
        && auto[i].y > jugador.y && auto[i].y < jugador.y + jugador.tam/2;
      if (contacto) {
        vida.vidas = vida.vidas;
        vida.pierdeVidas();
        auto[i].chocarAutoyJugador();
        //SI PIERDE LAS TRES VIDAS, PIERDE EL JUEGO
        if (vida.vidas <= 0 || vida.vidas == 0 && estado.equals ("jugar")) {
          noLoop();
          textop ("¡Perdiste, no llegaste a tiempo!", x+tam/2.3, y+tam/1.4, 2, 36);
          //------------------
          println(contacto);
        }
      }
    }
  }
  void ganar () {
    //COLISIÓN ENTRE LA RECTA FINAL Y PERSONAJE (AUTO VERDE)
    boolean rectafinal = jugador.x> meta.x && jugador.x<meta.x + meta.tam/1.8+300
        && jugador.y>meta.y && jugador.y<meta.y+meta.tam/2; {
      if (rectafinal) {
          noLoop();
      textop ("¡Ganaste!", x+tam/1.2, y+tam/1.4, 2, 36);
      meta.tocarJugadoryRecta();
    }
  }}

  //TEXTOS 
  void textop (String texto, float x, float y, int i, int j) {
    pushStyle ();
    fill (255);
    textFont(pfuente[i]);
    textSize (j);
    text (texto, x, y);
    popStyle ();
  }
} 
