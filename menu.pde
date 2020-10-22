class Menu {
  //PROPIEDADES
  float x, y, tam;
  PImage imagen;
  Jugador jugador;

  //CONSTRUCTOR
  Menu () {
    //llamar a las instancias de jugador 
    jugador= new Jugador ();
    //iniciar las variables
    tam = width;

    //cargar imagen
    imagen = loadImage ("foto1.png");
  }

  void dibujar () {
    pushStyle();
    //IMAGEN
    image( imagen, x, y ); 
    //TEXTO
    fill (0);
    juego.textop ("Mamá al rescate", x+tam/2.6, y+tam/14,0, 50);
    juego.textop ("Aprete ENTER para comenzar", x+tam/3.5, y+tam/1.5,0,56);
    popStyle();
  }
}
