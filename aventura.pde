class Aventura {
  Juego juego;
  String estado;
  int delay;
  Fuego F;
  //la clase Fondo del juego es pantalla en la aventura
  Pantalla P;
  Texto T;
  Personaje Pr;
  Boton B;
  Homero jugador;
  color amarillo=color (220, 214, 41);

  Aventura() {
    colorMode(RGB);
    F =new Fuego();
    P= new Pantalla();
    T= new Texto();
    Pr=new Personaje();
    B=new Boton();
    juego = new Juego();
    jugador= new Homero();
    estado="presentacion";
  }
  void dibujar () {
    if (Pr.salvado[1]==true && Pr.salvado[2]==true) {
      estado="final2";
    }
    if (estado.equals("presentacion")) {
      background (100, 100, 255);
      P.dibujarImg (10, width/1.5, 0, width/3.3, height/1.2);
      P.dibujarImg1 (11, 0, 0);
      F.dibujar(0, height/1.5, width/2, height/3);
      T.dibujarTextos(25, 255, 0, width/4, height/3, width/2.6, height/1.5);
      T.textosC(20, 0, 1, width/2, height/1.1);
    } else if (estado.equals("casaincendiada")) {
      P.dibujarFondo(1);
      F.dibujar(0, height/12, width/4, height/6);
      F.dibujar (width/2.6, height/1.8, width/4, height/6);
      F.dibujar (width/16, height/1.8, width/4, height/6);
      F.dibujar (width/1.7, height*0.075, width/4, height/6);
      P.dibujarRect (width-width, height/1.4, width, height);
      P.dibujarImg1 (12, width/2.3, height/2.5);
      T.dibujarTextos(25, 255, 2, width/40, height/1.3, width/2.6, height/1.1);
      T.textosC(20, 0, 3, width/40, height-20);
    } else if (estado.equals("direcciones")) {
      delay=delay+1; 
      P.dibujarFondo(2);
      F.dibujarFlama (1, width-width, height/2);
      F.dibujar(width*0.020, height/1.5, width/4, height/6);
      F.dibujar(width/1.7, height/7, width/8, height/12);
      //FUEGO SIN MOVIMIENTO
      P.dibujarImg1(13, width/3.5, height/2.1);
      //BOTONES DE FLECHAS
      B.dibujar(0, width/1.6, height/3);
      B.dibujar(1, width-width+height, height/1.6);
      B.dibujar(2, width/8, height/1.6);
      //CUADRADO DE TEXTO
      P.dibujarRect (width-width, height/1.2, width, height);
      P.dibujarEllipse (width/1.9, height/1.1, width*0.075, height/9.3);
      T.dibujarTextos(25, 255, 4, width/3.9, height/1.6, width/2, height);
      T.textosC(20, 0, 5, width*0.012, height/1.1+15);
      B.dibujarFlecha(0, width/2.1+18, height*0.86, width/16, height*0.10);

    } //-------------JUEGO-----------
    else if (estado.equals("comedor")) {
      //juego.jugando=true;
        juego.play(this);
        juego.teclas();
      //juego.reset();
      //TECLADO DEL JUEGO
      if (juego.elalto==true) {
        juego.teclas();
        juego.jugador.teclas();
      } else if (juego.elalto==false) {
        jugador.sueltoteclas();
      }
    } else if (estado.equals("sala")) {
      background(100, 100, 255);
      P.dibujarFondo(5);
      F.dibujarFlama1 (2, 0, 0, width, height/1.2-20);
      //BOTONES DE SI O NO
      B.dibujarBotones (width/2+10, height/2+10, width/13.2, height/10);
      B.dibujarBotones (width/2.3-7, height/2+10, width/13.2, height/10);
      //CUADRADO DE TEXTO
      P.dibujarRect (width-width, height/1.3, width, height);
      Pr.dibujarPersonaje(3, width/5.3, height/1.3-20);
      T.textosC(25, 255, 9, width/2.3, height/1.2);
      T.textosC(50, 0, 10, width/4, height/2); 
      T.textosC(40, 0, 11, width/1.9, height/1.7);
      T.textosC(40, 0, 12, width/2.3, height/1.7);
    } else if (estado.equals("escaleras")) {
      delay=delay+1;
      background(100, 100, 255);
      P.dibujarFondo(6);
      //FUEGO CON MOVIMIENTO
      F.dibujar (width/3, height/2.2, width/4, height/6);
      //BOTONES DE FLECHAS
      B.dibujar (4, width*0.51, height/2);
      B.dibujar (5, width*0.32, height/2);
      B.dibujar (5, width*0.26, height/1.7+8);
      B.dibujarFlecha (4, width/1.3-15, height*0.91, width/10, height/12);
      //RECT CON FLECHAS
      B.dibujarBotones (width/1.1-22, height*0.20, width/6, height*0.28);
      B.dibujarFlecha (3, width/1.1-22, height*0.23, width/6, height/5+10);
      B.dibujarBotones (width/2.5, height*0.09, width/6, height*0.18);
      B.dibujar (3, width/2.4, height*0.10);
      //FUEGO SIN MOVIMIENTO
      F.dibujarFlama (1, width/1.8-6, height/1.6);
      F.dibujarFlama1 (1, width/4-10, height/1.6, width/8, height/6.7);
      //CUADRADO DE TEXTO
      P.dibujarEllipse (width/1.2-26, height/1.2+5, width/10, height/7.5);
      P.dibujarRect (width-width, height/1.3, width, height);
      T.textosC(25, 255, 13, width/8, height/1.2);  
      T.textosC(20, 0, 14, width/8, height/1.2+50);
      T.textosC(20, 0, 7, width-60, height/2.5+10);
    } else if (estado.equals("baño")) {    
      delay=delay+1;
      P.dibujarFondo(14);
      F.dibujarFlama1 (2, 0, 0, width, height*0.8);
      //BOTONES DE SI O NO 
      B.dibujarBotones (width/2+10, height/2+10, width/13.2, height/10);
      B.dibujarBotones (width/2.3-7, height/2+10, width/13.2, height/10);
      //CUADRADO DE TEXTO
      P.dibujarRect (width-width, height/1.30, width, height);
      Pr.dibujarPersonaje(3, width/5.3, height*0.74-4);
      T.textosC(25, 255, 9, width/2.3, height/1.2);
      T.textosC(50, 0, 10, width/4, height/2); 
      T.textosC(40, 0, 11, width/1.9, height/1.7);
      T.textosC(40, 0, 12, width/2.3, height/1.7);
    } 
    //HABITACIÓN DE BART (MONO) 
    else if (estado.equals("habit1")) {
      background(100, 100, 255);
      delay=delay+1;
      P.dibujarFondo(4);
      F.dibujarFlama (1, width/1.8+6, height/3);
      F.dibujarFlama1 (1, width/2+5, height/3-5, width/8, height/6.6);
      //FUEGOS
      F.dibujar (width/2.1-10, height/1.9+15, width*0.38, height/4);
      F.dibujar (width/1.8+6, height/1.9+15, width*0.38, height/4);
      F.dibujar (width*0.63-4, height/1.9+15, width*0.38, height/4);
      //TITULO
      P.dibujarImg (11, width*0.75, height-height, width/4, height*0.1-10);
      //IMAGEN DEL MONO
      Pr.dibujar (2, width/5.3, height*0.52);
      //CUADRADO DE TEXTO
      P.dibujarRect (width-width, height/1.30, width, height);
      B.dibujarFlecha(1, width*0.75, height*0.83+2, width/10, height*0.1-10);
      T.textosC(20, 0, 6, width*0.013, height*0.84-4);
      T.textosC(20, 0, 7, width*0.75, height*0.93+2);
      //DIALOGO DEL MONO
      Pr.salvar(1, width/4+25, height/4-20, 1, width*0.37, height*0.42-9, 15, width/2.6+14, height*0.30-14, width/2.6-7, height/3);
    } 
    //HABITACIÓN DE LISA
    else if (estado.equals("habit2")) {
      background(100, 100, 255);
      P.dibujarFondo(7);
      F.dibujarFlama1 (0, width*0.16+2, height*0.42-2, width*0.63-4, height*0.42-2);
      //CUADRADO DE TEXTO  
      P.dibujarRect (width-width, height/1.30, width, height);
      Pr.dibujar (0, width/4, height/2.5);
      B.dibujarFlecha (2, width*0.013, height*0.84-4, width/10, height/10-10);
      T.textosC(20, 0, 6, width*0.013, height*0.84-4);
      T.textosC(20, 0, 7, width*0.044, height*0.93+2);
      //DIALOGO DE SALVAR (ABUELO)
      //void salvar (int index, float nx, float ny, int n, float x, float y, int arreglo, float xp, float yp, float diam, float diam1) {
      Pr.salvar(0, width*0.37+4, height*0.08, 2, width*0.41+6, height*0.14, 16, width*0.50-10, height*0.20, width/4, height/6);
    } 
    //HABITACIÓN SIN NADA 
    else if (estado.equals("habit3")) {
      background(100, 100, 255);
      delay=delay+1;
      P.dibujarFondo(8);
      P.dibujarImg(11, width*0.75, height-height, width/4, height/10-10); 
      //CUADRADO DE TEXTO
      P.dibujarRect (width-width, height*0.84-4, width, height);
      T.textosC(20, 0, 6, width-width, height*0.87-2);
      T.textosC(20, 0, 7, width*0.75, height*0.93+2);
      B.dibujarFlecha(1, width*0.75, height*0.84-4, width/10, height/10-10);
      //FUEGOS
      F.dibujarFlama ( 1, width*0.74-2, height*0.55);
      F.dibujarFlama1 (0, width*0.34-2, height*0.18-3, width*0.63-4, height*0.42-2);
    } else if (estado.equals("final1")) {
      delay=delay+1;
      background(100, 100, 255);
      P.dibujarFondo1(0);
      Pr.dibujarPersonaje (4, width*0.67+4, height*0.58+2);
      P.dibujarImg (11, 600, 0, width/4, height/10-10);
      T.textosC(20, 0, 17, width*0.63-4, height-10);
      T.dibujarTextos(25, 255, 18, width*0.025, height*0.68-8, width*0.75, height);
      //RESET DEL JUEGO
      //juego.jugando=false;
    } else if (estado.equals("final2")) {
      delay=delay+1;
      background(100, 100, 255); 
      //void textosC(float tam, int c, int index, float x, float y) {
      T.textosC(20, 0, 19, width*0.56+2, height-10);
      //void dibujarTextos(float tam, int c,int index, float x, float y, float diam, float diam1) {
      T.dibujarTextos(30, amarillo, 20, width/8, 50, width*0.75, height/3);
      T.dibujarTextos(25, 255, 21, 20, height/6, width*0.63-4, height*0.68-8);
      P.dibujarImg1 (9, width/8, height*0.25);
    } else if (estado.equals("creditos")) {
      delay=delay+2;
      background(100, 100, 255);
      P.dibujarFondo1(11);
      P.dibujarImg1 (15, width*0.025, height/2);
      T.Actualizar();
      //TEXTOS DE CREDITOS
      T.dibujarTextos(35, amarillo, 22, width/2.2+7, T.texX[0], width*0.65, T.texX[1]);
      T.dibujarTextos(20, 255, 23, width/1.8+6, T.texX[2], width*0.68+6, T.texX[1]);
      T.dibujarTextos(20, 255, 24, width/1.8+6, T.texX[3], width*0.68+6, T.texX[1]);
      T.dibujarTextos(20, 255, 25, width/1.8+6, T.texX[4], width*0.68+6, T.texX[1]);
      T.dibujarTextos(20, 255, 26, width/1.8+6, T.texX[5], width*0.68+6, T.texX[1]);
      T.dibujarTextos(20, 255, 27, width/1.8+6, T.texX[6], width*0.68+6, T.texX[1]);
      T.dibujarTextos(25, 255, 28, width/1.8+6, T.texX[7], width*0.68+6, T.texX[1]);
      T.textosC(20, 0, 29, width*0.013, height-10);
    }
  }

  void cambiarEstado( String nuevoEstado ) {
    estado = nuevoEstado;
    println( estado );
  }

  void teclasJuego() {
    juego.teclas();
    juego.elalto=true;
  }
  void teclasJuego1() {
    juego.elalto=false;
  }

  void teclas() {   //cambio de : (presentacion) >> (casaincendiada)------------------------------
    if (keyCode==ENTER && estado.equals("presentacion")) {
      estado = "casaincendiada";
    }
    //cambio de : (casaincendiada) >> (direcciones)-------------------------------
    if (keyCode==CONTROL && estado.equals("casaincendiada")) {
      estado="direcciones";
    }

    //cambio de :(final1) >> (creditos)--------------------------------------------
    if (keyCode==ENTER && estado.equals("final1")) {
      estado="creditos";
      Pr.salvado[0]=false;
      Pr.salvado[1]=false;
      Pr.salvado[2]=false;
      delay=0;
      //juego.jugando=false;
    }
    //cambio de :(final2) >> (creditos)--------------------------------------------
    if (keyCode==ENTER && estado.equals("final2")) {
      estado="creditos";
      Pr.salvado[0]=false;
      Pr.salvado[1]=false;
      Pr.salvado[2]=false;
      delay=0;
    } 
    //REINICIO ---cambio de :(creditos) >> (presentacion)--------------------------
    if (key==' '&& estado.equals("creditos")&& delay>5) {
      estado= "presentacion";
      Pr.salvado[0]=false;
      Pr.salvado[1]=false;
      Pr.salvado[2]=false;
    }
  }


  void click(String b, float y1, float y2, float x1, float x2, float M, float M1) {
    pushStyle();
    if (mouseY>y1 && mouseY<y2+M && mouseX>x1 && mouseX<x2+M1) {
      estado = b;
      delay=0; 
      popStyle();
    }
  }

  void botones() {
    //HABITACIÓN DE LAS FLECHAS AL COMENZAR EL JUEGO
    if (estado.equals("direcciones")) {
      //B.dibujar(0, width/1.6, height/3);
      //B.dibujar(1, width-width+height, height/1.6);
      //B.dibujar(2, width/8, height/1.6);

      //VA A JUEGO
      click("comedor", height/1.6, height/1.6, width-width+height, width-width+height, height*0.13+2, width/8);
      //VA A LA SALA DE PERDER
      click("sala", width/2.1-10, width/2.1-10, height/6, height/6, height*0.13+2, width/8);
      //VA HACIA EL PASILLO DE MÁS FLECHAS
      click("escaleras", width/4, width/4, height/1.2, height/1.2, height*0.21-1, width/8);
    }

    if (estado.equals("sala")) {
      //FINAL DE LA AVENTURA
      if (mouseY>310 && mouseY<310+60 && mouseX>410 && mouseX<410+40) {
        estado="presentacion";
        Pr.salvado[0]=false;
        Pr.salvado[1]=false;
        Pr.salvado[2]=false;
      } else if (mouseY>310 && mouseY<310+60 && mouseX>340 && mouseX<340+60) {
        estado="final1"; 
        delay=0;
      }
    }
    //PASILLO CON FLECHAS DE HABITACIONES
    if (estado.equals("escaleras")) {
      //EN LA FUNCIÓN CLICK APARECE PRIMERO LA POSICIÓN Y LUEGO POSICIÓN X
      //B.dibujarBotones (width/1.1-22, height*0.20, width/6, height*0.28);
      click("direcciones", height*0.20, height*0.20, width/1.1-22, width/1.1-22, height*0.28, width/6);
      //B.dibujar (5, width*0.32, height/2);
      click("habit1", height/2, height/2, width*0.32, width*0.32, height/6, width/8);
      //B.dibujar (4, width*0.51, height/2);
      click("habit2", height/2, height/2, width*0.51, width*0.51, height/6, width/8);
      //B.dibujar (5, width*0.26, height/1.7+8);
      click("habit3", height/1.7+8, height/1.7+8, width*0.26, width*0.26, height/6, width/8);
      //B.dibujarBotones (width/2.5, height*0.10, width/6, height*0.18);
      click("baño", height*0.09, height*0.09, width/2.5, width/2.5, height*0.18, width/6);
    }
    if (estado.equals("baño")) {
      //FINAL DE LA AVENTURA
      //B.dibujarBotones (width/2+10, height/2+10, width/13.2, height/10);
      //B.dibujarBotones (width/2.3-7, height/2+10, width/13.2, height/10);

      click("presentacion", height*0.52-2, height*0.52-2, width/2+10, width/2+10, height/10, width/13.2);
      Pr.salvado[0]=false;
      Pr.salvado[1]=false;
      Pr.salvado[2]=false;
      click("final1", height*0.52-2, height*0.52-2, width*0.42+4, width*0.42+4, height/10, width/13.2);
    }
    //HABITACIÓN DE BART DONDE ESTÁ EL MONO
    if (estado.equals("habit1")) {
      click("escaleras", height*0.84-4, height*0.84-4, width*0.75, width*0.75, height/10-10, width/10);
      //PARAMETROS DE LA IMAGEN DEL PERSONAJE
      if (mouseY>260 && mouseY< 260+185 && mouseX>150 && mouseX <150+185 &&  delay>5) {
        Pr.salvado[1]=true;
      }
    }
    //HABITACIÓN DE LISA DONDE ESTÁ EL ABUELO
    if (estado.equals("habit2")) {
      click("escaleras", 500, 500, 10, 10, 50, 80);
      //Pr.dibujar (0, width/4, height/2.5);
      if (mouseY>240 && mouseY<240+162 && mouseX>200 && mouseX <200+150) {
        Pr.salvado[2]=true;
      }
    }
    //HABITACIÓN DE HOMERO SIN NADIE
    if (estado.equals("habit3")) { 
      click("escaleras", height*0.84-4, height*0.84-4, width*0.75, width*0.75, height/10-10, width/10);
    }
  }
}
