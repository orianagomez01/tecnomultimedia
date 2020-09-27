class Lapiz { 
  //poner las variables de lapiz con programación estructurada
  color c;
  
  //CONSTRUCTOR
  Lapiz (color c_) {
  c= c_;
  }
  
  //MÉTODOS (ACCIONES)
  //KEYPRESSED
  void borrarDibujo() {
     if ( key == ' ' ) {
    background( 255 );
    println( ">> SE BORRO LA PANTALLA" );
  }
  }
//Hice dos (borrarDibujo) y (cambiarConLetra) para diferenciar sus acciones
  void cambiarConLetra () {
    if ( key == 'r' ) {
    //color a rojo
    c = color( 255, 0, 0 );
  } else if ( key == 'g' ) {
    //color a verde
    c = color( 0, 255, 0 );
  } else if ( key == 'b' ){
    //color a azul
    c = color( 0, 0, 255 );
  } else if( key == 'k' ){
    //color a negro
    c = color( 0 );    
  }
  println( "La tecla presionada es: " + key );
}
 //SERÍA MOUSEDRAGGED 
void dibujarConMouse () { 
   //SI( PosicionDeMouseY esMenorA 500){ ...
  if( mouseY <= 500 ){
    //LAPIZ
    stroke( c );
    //dibujo una linea entre la posición actual y la anterior del mouse
    line( mouseX, mouseY, pmouseX, pmouseY );
  }
  println( "mouseY: " + mouseY );
}

//MOUSEMOVED
void moverConMouse () {
   stroke( 0 ); 
}
  }
