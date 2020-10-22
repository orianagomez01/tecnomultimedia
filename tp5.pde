// tp5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

// Oriana Gomez (Legajo: 85038/9)
// Mamá al rescate

/* PROPUESTA 
 En la pantalla 24 de mi aventura gráfica, cuando los niños rompen el sillón deciden
 en llamar a la madre y ella se dirige en auto a la casa. Entonces, el protagonista
 del juego es el auto con el objetivo de llegar a la casa. El auto tiene que esquivar 
 los otros autos teniendo tres vidas. Gana cuando llega a la recta final (casa) y pierde cuando se le terminan
 las tres vidas.
 */
//SONIDO: importo las clases de la librería de sonido
import processing.sound.*;

//declaro la clase juego
Juego juego;

SoundFile musicaFondo;

void setup() {
  size( 800, 600 );
  //inicializo la clase juego
  juego = new Juego();

  musicaFondo = new SoundFile(this, "musica.wav");
  //no para la música
  musicaFondo.loop();
}

void draw() {

  //llamo a los métodos de la clase Juego
  juego.actualizar();

  juego.dibujar();
  //juego.resetear();
}
void keyPressed() {
  //metodos de las teclas
  juego.teclas(keyCode);
}

void mousePressed() {
}
