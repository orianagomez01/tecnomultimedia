// CONDICIONALES con IF
//
// si ( condicion ){
//   //sucede este codigo
// }
//
// CONDICION = expresion de tipo booleana (TRUE/FALSE)
// -- COMPARACION entre dos valores: >, <, ==, >=, <=, !=
//DESAFIO 6: POO - ORIANA GOMEZ

//ACLARAR EL OBJETO DE LA CLASE
Lapiz l;

//CUANDO: al iniciar el programa
void setup() {
  size( 400, 600 );
  background( 255 );
  noFill();
 
  //INICIALIZAR EL OBJETO 
  l = new Lapiz (color(0));
}

//CUANDO: siempre, a 60fps por defecto (se repite)
void draw() {
}

//--------------------------------------------------

void keyPressed() {
  l.borrarDibujo();
l.cambiarConLetra();  
}

//CUANDO: al presionar el clic del mouse y arrastrarlo
void mouseDragged() {
l.dibujarConMouse ();
}

//CUANDO: cuando muevo el mouse
void mouseMoved() {
  l.moverConMouse ();
}
