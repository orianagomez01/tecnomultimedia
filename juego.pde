class Juego {
  // PROPIEDADES (variables)

  Homero jugador;
  Canon obstaculo;
  Bart B;
  Fuego F;
  Pantalla P;
  boolean elalto;
  String estado;
  float posy; 
  //boolean jugando = false;
  boolean c=false;
  Juego() { 

    jugador=new Homero();
    obstaculo= new Canon();
    B=new Bart();
    P= new Pantalla();

    //-----------------------------------------------------------------------------------------
    estado="jugar";
    posy=550;
  
  }

  // METODOS (funciones)
  void play(Aventura av) {
    if (estado.equals("jugar")) {
      P.actualizar();
      P.dibujarFi();
      P.dibujar();
      jugador.dibujar(); 
      obstaculo.actualizar();
      obstaculo.dibujar();
      B.dibujar();
      perderJuego();
      ganarJuego();
      //rect(jugador.x, jugador.y, 83, 124); //para ver si el jugador salta o no, si avanza, etc.
      //rect(obstaculo.x, obstaculo.y, 132, 52); // lo mismo para los obstáculos
      //println( "jugador.x: " + jugador.x + " | jugador.y: " + jugador.y ); 
      //println( "Obstaculo.x: " + obstaculo.x + " | obstaculo.y: " + obstaculo.y );
    } else if (estado.equals("pierde")) {
      av.cambiarEstado("final1");
      //reset();
    } else if (estado.equals("gana")) {
      aventura.Pr.salvado[0]=true;
      av.cambiarEstado("direcciones");
      
    }
  }
  void perderJuego() {  
    float d =dist(jugador.x, jugador.y, obstaculo.x, obstaculo.y);
    if (d<60 && estado.equals("jugar")) {
      c=true;
      
      obstaculo.x=1000;
    }
    if ( c==true && estado.equals("jugar")) {
      estado="pierde";
    
      obstaculo.x=1000;}
    println(d+ "distancia");
  } 
  void ganarJuego() {  
    float d =dist(jugador.x, jugador.y, B.bx, B.y);
    if (d<40) {
      c=true;
      println("d:", d);
      B.bx=2000;
      obstaculo.x=1000;
    }
    if ( c==true && estado.equals("jugar")) {
      estado="gana";
      
      obstaculo.x=1000;
    }
  }
  void teclas() {

    if (keyCode==ENTER && estado.equals("menu")) {
      estado = "jugar";
    }
  }
  
  //RESET DEL JUEGO
  //void reset () {
  //  for (int i = 0; i <6; i++) {
  //  obstaculo.Fug[i]=loadImage("fug_"+i+".png");
  //  }
    
  //  for ( int i = 0; i <9; i++) {
  //    jugador.homero [i]=loadImage("h_"+i+".png");
  //  }
    
  //  B.actualizar();
  //  P.actfondo();
  //  P.dibujarFi();
  //  c=false;
  //}
}
