import ddf.minim.*;
Minim minim;
import processing.sound.*;
SoundFile misonido, sonidosalto;
AudioPlayer music_fondo;
Aventura aventura;
void setup() {
  size(800, 600);

  surface.setResizable(true);
  surface.setLocation (100, 100);

  minim= new Minim(this);
  misonido=new SoundFile(this, "teclas.wav");
  music_fondo= minim.loadFile("television-simpsons.mp3");
  sonidosalto=new SoundFile(this, "HM.wav");
  music_fondo.loop();
  aventura= new Aventura();
}

void draw() {
  aventura.dibujar();
} 
void keyPressed () {
  aventura.teclas();
  aventura.teclasJuego();
   if(key==' ' && aventura.estado.equals("comedor")){
     sonidosalto.play();
  }
}
void mouseClicked() {
  aventura.botones();
  misonido.play();
}
void keyReleased() {
 aventura.teclasJuego1(); 
}
