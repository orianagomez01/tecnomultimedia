//import ddf.minim.*;

//Minim minim;
//AudioPlayer player;

String estado;

PImage [] pimagenes= new PImage [32];
PImage [] pflechas= new PImage [2];
PFont [] pfuente = new PFont [3];

int tam= width;

void setup() {
  size (800, 600);
  //minim = new Minim (this);
  //player= minim.loadFile("hangon.MPEG-4");

  //CARGO IMAGENES CON OPCIONES Y FOTO FINAL CON ARREGLOS
  for (int i=0; i <pimagenes.length; i++) {
    pimagenes[i]= loadImage ("imagen"+i+".png");
  }

  //IMAGENES DE LAS FLECHAS - FLECHA0= ADELANTE FLECHA1= ATRÁS
  for (int o=0; o < pflechas.length; o++) {
    pflechas[o]= loadImage ("flecha"+o+".png");
  }

  //CARGAR FUENTES - FUENTE1 (COMIENZO E INTERACCIONES)- FUENTE2(ARRIBA)- FUENTE3(OPCIONES)

  pfuente [0]= loadFont("DKLemonYellowSun-46.vlw");
  pfuente[1]=loadFont ("Dominican-48.vlw");
  pfuente [2]= loadFont ("DKLemonYellowSun-32.vlw");

  surface.setResizable(true); 

  estado = "bienvenidos";
}    

void draw () {

  //PRIMERA PANTALLA (ENTER)
  if (estado.equals ("bienvenidos")) {  
    pantallas (0);
    textod ("Aprete ENTER para comenzar", pX(400), pY(560), 0);
  }

  //PANTALLA 1 DE NARRACION
  else if (estado.equals ("pantalla1")) {
    pantallas(1);

    //TEXTO 1 DE NARRACIÓN
    textod ("En Anville, una ciudad en la que \n todos se conocen", pX(400), pY(60), 1);

    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40), 0); 
    //IMAGEN DE FLECHA
    flechad(0, 720);
  }
  //PANTALLA 2 DE NARRACIÓN
  else if ( estado.equals ("pantalla2")) {
    pantallas(2);

    //TEXTO 2
    textod ("Viven dos niños llamados Conrad y Sally \n con su madre", pX(400), pY(60), 1);

    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40), 0); 
    //IMAGEN DE FLECHA
    flechad(0, 720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40), 0);  
    //IMAGEN DE FLECHA
    flechad(1, 640);
  }

  //PANTALLA 3 DE NARRACIÓN
  else if ( estado. equals ("pantalla3")) {
    pantallas(3);

    //TEXTO 3 DE NARRACIÓN
    textod ("Su madre está organizando una fiesta de oficina en \n su casa y les ordena a los niños que no deben romper \n nada de la casa", pX(400), pY (85), 1);
    
    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40), 0); 
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40), 0);    
    //IMAGEN DE FLECHA
    flechad(1,640);
  }

  //PANTALLA 4 DE NARRACIÓN  
  else if (estado.equals ("pantalla4")) {
    pantallas(4);

    //TEXTO 4 DE NARRACIÓN
    textod ("Al mencionarles esto, llega Kwan, la señora \n que los cuida algunas veces y la madre se va", pX(400), pY (60), 1);


    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40), 0); 
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40), 0);  
    //IMAGEN DE FLECHA
    flechad(1,640);
  }

  //PANTALLA 5 DE NARRACIÓN
  else if (estado.equals ("pantalla5")) {
    pantallas(5);

    //TEXTO 5 DE NARRACIÓN
    textod ("Kwan, al ser mayor de edad, se queda dormida \n mirando el televisor", pX(400), pY (60), 1);

    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40), 0); 
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
   boton (pX(640), pY(545), pX(70), pY(40), 0);   
    //IMAGEN DE FLECHA
    flechad(1,640);
  }

  //ESCENA 6 DE NARRACIÓN
  else if (estado.equals ("pantalla6")) {
    pantallas(6);

    //TEXTO 6 DE NARRACIÓN
    textod ("Los niños aburridos ya que no debían tocar nada, \n escucharon un ruido", pX(400), pY (60), 1);

    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40),0); 
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40),0);  
    //IMAGEN DE FLECHA
    flechad(1,640);
  }

  //ESCENA 7 DE NARRACIÓN (ESCALERAS)
  else if (estado.equals ("pantalla7")) {
    pantallas(7);
    //TEXTO 6 DE NARRACIÓN
    textod ("El perro comienza a ladrar mirando hacia \n el piso de arriba", pX(400), pY (60), 1);
    //TEXTO DE INTERACCIÓN
    textod ("Aprete click en la escalera para subir", pX(400), pY(560), 0);

    //BOTON DE ADELANTE PARA IR ATRÁS
boton (pX(720), pY(545), pX(70), pY(40),0); 
    //IMAGEN DE FLECHA
    flechad(1,720);
  }

  //ESCENA 8 DE NARRACIÓN 
  else if (estado.equals ("pantalla8")) {
    pantallas(8);

    //TEXTO 7 DE NARRACIÓN
    textod ("A los niños les pareció oir ese ruido desde \n el armario", pX(400), pY (60), 1);

    //BOTON DE ADELANTE PARA IR ATRÁS
    boton (pX(720), pY(545), pX(70), pY(40),0);   
    //IMAGEN DE FLECHA
    flechad(1,720);

    //TEXTO DE INTERACCIÓN
    textod ("Aprete click en la puerta para continuar", pX(400), pY(560), 0);
  }

  //ESCENA 9 DE NARRACIÓN
  else if (estado.equals ("pantalla9")) {
    pantallas(9);

    //TEXTO 8 DE NARRACIÓN
    textod ("Detrás de ese armario aparece un gato de sombrero \n rojo y blanco", pX(400), pY (60), 1);

    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40),0);   
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40),0);  
    //IMAGEN DE FLECHA
    flechad(1,640);
  }

  //ESCENA 10 DE INTERACCIÓN
  else if (estado.equals ("pantalla10")) {
    pantallas(10);

    //TEXTO 9 DE NARRACIÓN
    textod ("Asustados, los niños comienzan a correr \n buscando un lugar donde esconderse", pX(400), pY (60), 1);
    //RECTANGULOS DE OPCIONES
    //RECTANGULO IZQUIERDO
    boton (pX(100), pY (400), pX(250), pY(90), 0);
    //TEXTO OPCIÓN 1
    textod ("Esconderse en el \n armario", pX(225), pY (445), 2);

    //RECTANGULO DERECHO
    boton (pX(475), pY(400), pX(250), pY(90), 0);
    //TEXTO OPCIÓN 2
    textod ("Esconderse debajo \n de la cama", pX(600), pY(445), 2);
    
    //BOTON DE ADELANTE PARA IR ATRÁS
   boton (pX(720), pY(545), pX(70), pY(40), 0);   
    //IMAGEN DE FLECHA
    flechad(1,720);
  }
  //ESCENA 11 OPCIÓN 1
  else if (estado.equals ("pantalla11")) {
    pantallas(11);

    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40), 0);   
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40), 0);    
    //IMAGEN DE FLECHA
    flechad(1,640);
  }
  //ESCENA 12 OPCION 1
  else if (estado. equals ("pantalla12")) {
    pantallas(12);

    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40),0); 
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40),0);     
    //IMAGEN DE FLECHA
    flechad(1,640);
  }
  //ESCENA 11 OPCIÓN 2
  else if (estado.equals ("pantalla11op2")) {
    pantallas(13);

    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40),0); 
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40),0);   
    //IMAGEN DE FLECHA
    flechad(1,640);
  }

  //ESCENA 12 OPCIÓN 2
  else if (estado.equals ("pantalla12op2")) {
    pantallas(14);

    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40),0);  
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40),0 );   
    //IMAGEN DE FLECHA
    flechad(1,640);
  }

  //ESCENA 13
  else if (estado.equals ("pantalla13")) {
    pantallas(15);

    //TEXTO 10(13) DE NARRACIÓN
    textod ("El gato los hace entrar en confianza contandoles chistes \n y los invita a divertirse saltando arriba del sillón", pX(400), pY (60), 1);
    
    //TEXTO DE INTERACCIÓN
    textod ("Aprete click en el sillón para continuar", pX(400), pY(560), 0);

    //BOTON DE ADELANTE PARA IR ATRÁS
    boton (pX(720), pY(545), pX(70), pY(40), 0);
    //IMAGEN DE FLECHA
    flechad(1,720);
  }

  //ESCENA 14
  else if (estado.equals ("pantalla14")) { 
    pantallas(16);

    //TEXTO 11(13) DE NARRACIÓN
    textod ("Conrad le dice a Sally que se va a subir al sillón y \n que no le va a suceder nada", pX(400), pY (60), 1);
    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40), 0); 
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40), 0);
    //IMAGEN DE FLECHA
    flechad(1,640);
  }

  //ESCENA 15
  else if (estado.equals ("pantalla15")) {
    pantallas(17);

    //TEXTO 12 DE NARRACIÓN
    textod ("Sally comienza a dudar si subirse al sillón o no",  pX(400), pY (35), 1);

    //RECTANGULOS DE OPCIONES
    //RECTANGULO IZQUIERDO
   boton (pX(100), pY (400), pX(250), pY(90), 0);
    //TEXTO OPCIÓN 1
    textod ("no subirse al \n sillón", pX(225), pY (445), 2);

    //RECTANGULO DERECHO
    boton (pX(475), pY(400), pX(250), pY(90), 0);
    //TEXTO OPCIÓN 2
    textod ("subirse al \n sillón", pX(600), pY(445), 2);

    //BOTON DE ADELANTE PARA IR ATRÁS
   boton (pX(720), pY(545), pX(70), pY(40), 0); 
    //IMAGEN DE FLECHA
    flechad(1,720);
  }

  //ESCENA 16
  else if (estado.equals("pantalla16")) {
    pantallas(18);

    //TEXTO 13 DE NARRACIÓN
    textod ("Sally se queda mirando como se divierten", pX(400), pY (35), 1);

    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40),0);  
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40),0);
    //IMAGEN DE FLECHA
    flechad(1,640);
  } else if (estado.equals ("pantalla17op1")) {
    pantallas(19);
    //TEXTO 14 DE NARRACIÓN
    textod ("Luego de un rato, el gato les comenta que se aburrió \n y que tiene que seguir entreteniendo a otros niños", pX(400), pY (60), 1);

    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40),0); 
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40),0);
    //IMAGEN DE FLECHA
    flechad(1,640);
  } else if (estado.equals ("pantalla18op1")) {
   pantallas(20);

   //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40),0); 
   //IMAGEN DE FLECHA
   flechad(0,720);
  } else if (estado.equals ("creditos")) {
    pantallas(21);

   //TEXTO FINAL 
   textod ("Tecnología Multimedial I \n Trabajo Práctico N4 \n Oriana Gomez \n Cursada: 2020 \n Facultad de Artes - UNLP \n Docente: Matias Jauregui Lorda", pX(400), pY(280), 1); 

   //RECTÁNGULO COMENZAR OTRA VEZ
  boton (pX(620), pY(490), pX(160), pY(80), 150);

    //TEXTO DE VOLVER A COMENZAR
   textod ("Volver al \n comienzo", pX(700), pY (530), 2);
 }

  //ESCENA 16 OPCIÓN 2
  else if (estado.equals ("pantalla16op2")) {
    pantallas(22);

    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40),0);  
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
     boton (pX(640), pY(545), pX(70), pY(40),0);
    //IMAGEN DE FLECHA
    flechad(1,640);
  }

  // ESCENA 17 OPCIÓN 2
  else if (estado.equals ("pantalla17op2")) {
    pantallas(23);

    //TEXTO 14 DE NARRACIÓN
    textod ("Todo era diversión hasta que se rompió el sillón \n y los niños tienen que decidir qué hacer", pX(400), pY (60), 1);
    
    //RECTANGULOS DE OPCIONES
    //RECTANGULO IZQUIERDO
    boton (pX(100), pY (400), pX(250), pY(90),0);
    //TEXTO OPCIÓN 1
    textod ("llamar a la \n madre", pX(225), pY (445), 2);

    //RECTANGULO DERECHO
    boton (pX(475), pY(400), pX(250), pY(90),0);
    //TEXTO OPCIÓN 2
    textod ("no llamar a \n la madre", pX(600), pY(445), 2);

    //BOTON DE ADELANTE PARA IR ATRÁS
     boton (pX(720), pY(545), pX(70), pY(40),0); 
    //IMAGEN DE FLECHA
    flechad(1,720);
    
  } else if (estado.equals ("pantalla18sillama")) {
    pantallas(24);

    //TEXTO 15 DE NARRACIÓN
    textod ("Sally decidió ser valiente y comentarle lo sucedido \n a su madre omitiendo la parte del gato", pX(400), pY (60), 1);

    //BOTON ADELANTE
   boton (pX(720), pY(545), pX(70), pY(40),0);
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40),0);
    //IMAGEN DE FLECHA
    flechad(1,640);
  }  else if (estado.equals ("pantalla19sillama")) {
    pantallas(25);

    //BOTON ADELANTE
     boton (pX(720), pY(545), pX(70), pY(40),0);
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
   boton (pX(640), pY(545), pX(70), pY(40),0); 
    //IMAGEN DE FLECHA
    flechad(1,640);
 } else if (estado.equals ("pantalla20sillama")) {
    pantallas(26);

    //TEXTO 16 DE NARRACIÓN
    textod ("El gato les explica que debe irse porque no pueden \n verlos otros humanos que no sean ellos", pX(400), pY (60), 1);
    
    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40),0);
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
   boton (pX(640), pY(545), pX(70), pY(40),0);
    //IMAGEN DE FLECHA
    flechad(1,640);
} else if (estado.equals ("pantalla18nollama")) {
    pantallas(27);

    //TEXTO 17 DE NARRACIÓN
    textod ("El gato sacó de su sombrero una máquina para arreglar \n el sillon pero no lo logra", pX(400), pY (60), 1);

    //BOTON ADELANTE
     boton (pX(720), pY(545), pX(70), pY(40),0);
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40),0); 
    //IMAGEN DE FLECHA
    flechad(1,640);
 } else if (estado.equals ("pantalla19nollama")) {
    pantallas(28);

    //TEXTO 18 DE NARRACIÓN
    textod ("En ese instante, escuchan un ruido de auto y resulta \n ser que su madre llegó antes de tiempo", pX(400), pY (60), 1);

    //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40),0); 
    //IMAGEN DE FLECHA
    flechad(0,720);
    //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40),0); 
    //IMAGEN DE FLECHA
    flechad(1,640);
  }  else if (estado.equals ("pantalla20nollama")) {
 pantallas(29);

//TEXTO 19 DE NARRACIÓN
    textod ("El gato se va por la ventana de atrás para que \n la madre de los niños no lo vea", pX(400), pY (60), 1);
    
   //BOTON ADELANTE
    boton (pX(720), pY(545), pX(70), pY(40),0); 
    //IMAGEN DE FLECHA
    flechad(0,720);
   //BOTON ATRÁS
    boton (pX(640), pY(545), pX(70), pY(40),0); 
    //IMAGEN DE FLECHA
    flechad(1,640);
  } else if (estado.equals ("pantalla21nollama")) {
   pantallas(30);
   //TEXTO 20 DE NARRACIÓN
    textod ("La madre cuando entra a la casa, los castiga al ver \n el sillón porque desobedecieron lo que les dijo", pX(400), pY (60), 1);

   //BOTON ADELANTE
   boton (pX(720), pY(545), pX(70), pY(40),0);
   //IMAGEN DE FLECHA
   flechad(0,720);
   //BOTON ATRÁS
   boton (pX(640), pY(545), pX(70), pY(40),0);   
  //IMAGEN DE FLECHA
   flechad(1,640);
  } else if (estado.equals ("pantalla22nollama")) {
   pantallas(31);
   //TEXTO 21 DE NARRACIÓN
   textod ("Pero aunque hayan desobedecido a su madre, ellos \n tuvieron el mejor día de sus vidas", pX(400), pY (60),1);
    
    //BOTON ADELANTE
   boton (pX(720), pY(545), pX(70), pY(40),0);
   //IMAGEN DE FLECHA
   flechad(0,720);
  //BOTON ATRÁS
  boton (pX(640), pY(545), pX(70), pY(40), 0);     
    //IMAGEN DE FLECHA
   flechad(1,640);
   }
}

void keyPressed () {
  if (keyCode == ' ' && estado.equals ("bienvenidos")) {
    estado = "pantalla1";
  }
}

void mousePressed () {
  //BOTON QUE PASA DE ANVILLE A LOS NIÑOS
  if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla1")) {
    estado = "pantalla2";
  } //VOLVER ATRÁS
  else if (botcon (pX(640), pY(545), pX(70), pY(40)) && estado.equals ("pantalla2")) {
    estado = ("pantalla1");
  }

  //CAMBIO DE CONRAD-SALLY A IMAGEN DE LA MADRE
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla2")) {
    estado = "pantalla3";
  } //VOLVER ATRÁS: A CONRAD-SALLY
  else if (botcon (pX(640), pY(545), pX(70), pY(40)) && estado.equals ("pantalla3")) {
    estado = ("pantalla2");
  }

  //CAMBIO DE MADRE A MADRE ABRIENDOLE A LA NIÑERA LA PUERTA
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla3")) {
    estado = "pantalla4";
  }
  //VOLVER ATRÁS ESCENA 4 A ESCENA 3
  else if (botcon (pX(640), pY(545), pX(70), pY(40)) && estado.equals ("pantalla4")) {
    estado = ("pantalla3");
  }

  //CAMBIO DE ABRIR A LA NIÑERA A NIÑERA DURMIENDO - ESCENA 4 A 5
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla4")) {
    estado = "pantalla5";
  }
  //VOLVER ATRÁS (NIÑERA DURMIENDO A ABRIR NIÑERA) - ESCENA 5 A 4
  else if (botcon (pX(640), pY(545), pX(70), pY(40)) && estado.equals ("pantalla5")) {
    estado = ("pantalla4");
  }
  //CAMBIO DE NIÑERA DURMIENDO A NIÑOS ABURRIDOS - ESCENA 5-6
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla5")) {
    estado = "pantalla6";
  }
  //VOLVER ATRÁS (NIÑOS ABURRIDOS A NIÑERA DURMIENDO) - ESCENA 6 A 5
  else if (botcon (pX(640), pY(545), pX(70), pY(40)) && estado.equals ("pantalla6")) {
    estado = ("pantalla5");
  }
  //CAMBIO DE NIÑOS ABURRIDOS A ESCALERAS - ESCENA 6 A 7 
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla6")) {
    estado = "pantalla7";
  }
  //VOLVER ATRÁS (ESCALERAS- NIÑOS ABURRIDOS) - ESCENA 7 A 6
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla7")) {
    estado = ("pantalla6");
  }
  //CAMBIO DE ESCENA DE APRETAR CLICK EN ESCALERAS A ESCENA 8 - ESCENA 7 - 8
  else if (botcon (pX(200), pY(0), pX(400), pY(600)) && estado.equals ("pantalla7")) {
    estado = ("pantalla8");
  }
  //VOLVER ATRÁS - ESCENA 8-7
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla8")) {
    estado = ("pantalla7");
  }
  //CAMBIO DE ESCENA 8 A 9 (ARMARIO A GATO)
  else if (botcon (pX(0), pY(0), pX(600), pY(600)) && estado.equals ("pantalla8")) {
    estado = "pantalla9";
  }
  //VOLVER ATRÁS - ESCENA 9-8
  else if (botcon (pX(640), pY(545), pX(70), pY(40)) && estado.equals ("pantalla9")) {
    estado = ("pantalla8");
  }
  //CAMBIO DE ESCENA - ESCENA 9- 10
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla9")) {
    estado = "pantalla10";
  }
  //BOTON HACIA ATRÁS ESCENA 10 A 9 
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla10")) {
    estado = ("pantalla9");
  }
  //CAMBIO DE ESCENA 10 A OPCIÓN 1 
  else if (botcon (pX(100), pY(400), pX(250), pY(90))
    && estado. equals ("pantalla10")) {
    estado = "pantalla11";
  }
  //VOLVER ATRÁS DE ESCENA 11 (OPCIÓN 1) - 10
  else if (botcon (pX(640), pY(545), pX(70), pY(40)) && estado.equals ("pantalla11")) {
    estado = ("pantalla10");
  }
  //AVANZAR HACIA ESCENA 12 (OPCIÓN 1) - ESCENA 11- 12 
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla11")) {
    estado = "pantalla12";
  }
  //VOLVER ATRÁS DE ESCENA 12 (OPCIÓN 1) - ESCENA 12 -11
  else if (botcon (pX(640), pY(545), pX(70), pY(40)) && estado.equals ("pantalla12")) {
    estado = ("pantalla11");
  }
  //CAMBIO DE ESCENA 10 A OPCIÓN 2 
  else if (botcon (pX(475), pY(400), pX(250), pY(90)) 
    && estado. equals ("pantalla10")) {
    estado = "pantalla11op2";
  }
  //VOLVER ATRÁS DE ESCENA 11 (OPCIÓN 2) A ESCENA 10
  else if (botcon (pX(640), pY(545), pX(70), pY(40)) && estado.equals ("pantalla11op2")) {
    estado = ("pantalla10");
  }
  //AVANZAR DE ESCENA 11 (OPCIÓN 2) A ESCENA 12
  else if (botcon (pX(720), pY(545), pX(70), pY(40))
    && estado.equals ("pantalla11op2")) {
    estado = "pantalla12op2";
  }
  //VOLVER ATRÁS DE ESCENA 12 (OPCIÓN 2) A ESCENA 11
  else if (botcon (pX(640), pY(545), pX(70), pY(40)) && estado.equals ("pantalla12op2")) {
    estado = ("pantalla11op2");
  }
  //AVANZAR DE ESCENA 12 (OPCIÓN 1) A ESCENA 13
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla12")) {
    estado = "pantalla13";
  }
  //AVANZAR DE ESCENA 12 (OPCIÓN 2) A ESCENA 13
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla12op2")) {
    estado = "pantalla13";
  }    
  //VOLVER ATRÁS ESCENA 13 A OPCIONES
  else if (botcon (pX(640), pY(545), pX(70), pY(40)) && estado.equals ("pantalla13")) {
    estado = ("pantalla10");
  }
  //AVANZAR A PANTALLA 14 - ESCENA 13 - 14- MODIFICAR

  else if (botcon (pX(200),pY(400),pX(550),pY(600))
    && estado.equals ("pantalla13")) {
    estado = ("pantalla14");
  }
  //VOLVER ATRÁS ESCENA 14-13 
  else if (botcon (pX(640), pY(545), pX(70), pY(40)) && estado.equals ("pantalla14")) {
    estado = ("pantalla13");
  }
  //AVANZAR ESCENA 14-15
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla14")) {
    estado = ("pantalla15");
  }
  //VOLVER ATRÁS ESCENA 15-14
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla15")) {
    estado = ("pantalla14");
  }
  //AVANZAR ESCENA 15-16 (OPCIÓN 1)
  else if (botcon (pX(100), pY(400), pX(250), pY(90))
    && estado. equals ("pantalla15")) {
    estado = "pantalla16";
  }
  //VOLVER ATRÁS ESCENA 16 (OPCIÓN 1) A ESCENA 15
  else if (botcon (pX(640), pY(545), pX(70), pY(40)) && estado.equals ("pantalla16")) {
    estado = ("pantalla15");
  }
  //AVANZAR ESCENA 16 A ESCENA 17
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla16")) {
    estado = ("pantalla17op1");
  }
  //VOLVER ATRÁS ESCENA 17 OPCIÓN 1- ESCENA 16
  else if (botcon (pX(640), pY(545), pX(70), pY(40)) && estado.equals ("pantalla17op1")) {
    estado = ("pantalla16");
  }
  //AVANZAR ESCENA 17 A 18
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla17op1")) {
    estado = ("pantalla18op1");
  }
  // AVANZAR ESCENA 18 A CREDITOS
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla18op1")) {
    estado = ("creditos");
  }
  //IR DE CRÉDITOS AL INICIO
  else if (botcon (pX(620), pY(500), pX(160), pY(70))
    && estado. equals ("creditos")) {
    estado = ("bienvenidos");
  }
  //AVANZAR DE ESCENA 15 A ESCENA 16 (OPCIÓN 2)
  else if (botcon (pX(475), pY(400), pX(250), pY(90)) 
  && estado. equals ("pantalla15")) {
    estado = "pantalla16op2";
  }
  // VOLVER ATRÁS ESCENA 16 OPCIÓN 2 A ESCENA 15   
  else if (botcon (pX(640), pY(545), pX(70), pY(40))
    && estado.equals ("pantalla16op2")) {
    estado = ("pantalla15");
  }
  //AVANZAR ESCENA 16 OPCIÓN 2 A ESCENA 17 OPCIÓN 2
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla16op2")) {
    estado = "pantalla17op2";
  }
  //VOLVER ATRÁS ESCENA 17 OPCIÓN 2 A ESCENA 16 
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla17op2")) {
    estado = ("pantalla16op2");
  }
  //AVANZAR ESCENA 17 OPCIONES A ESCENA 18 SI LLAMAN A LA MADRE
  else if (botcon (pX(100), pY(400), pX(250), pY(90))
    && estado. equals ("pantalla17op2")) {
    estado = "pantalla18sillama";
  }
  //VOLVER ATRÁS ESCENA 18 SI LLAMAN A LA MADRE A ESCENA 17 OPCIÓN 2 PARTE DE OPCIONES
  else if (botcon (pX(640), pY(545), pX(70), pY(40))
    && estado.equals ("pantalla18sillama")) {
    estado = ("pantalla17op2");
  } //AVANZAR DE ESCENA 18 SI LLAMAN A LA MADRE A ESCENA 19 
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla18sillama")) {
    estado = ("pantalla19sillama");
  } // VOLVER ATRÁS ESCENA 19 SI LLAMAN A ESCENA 18
  else if (botcon (pX(640), pY(545), pX(70), pY(40))
    && estado.equals ("pantalla19sillama")) {
    estado = ("pantalla18sillama");
  } //AVANZAR ESCENA 19 SI LLAMAN A MADRE A ESCENA 20
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla19sillama")) {
    estado = ("pantalla20sillama");
  }// VOLVER ATRÁS ESCENA 20 SI LLAMAN A ESCENA 19
  else if (botcon (pX(640), pY(545), pX(70), pY(40))
    && estado.equals ("pantalla20sillama")) {
    estado = ("pantalla19sillama");
  } //AVANZAR ESCENA 20 A ESCENA DEL GATO YENDOSE 
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla20sillama")) {
    estado = ("pantalla18op1");
  } // AVANZAR ESCENA 17 DE OPCIONES A ESCENA 18 NO LLAMA
  else if (botcon (pX(475), pY(400), pX(250), pY(90))
    && estado. equals ("pantalla17op2")) {
    estado = "pantalla18nollama";
  } // VOLVER ATRÁS ESCENA 18 NO LLAMA A ESCENA 17 DE OPCIONES
  else if (botcon (pX(640), pY(545), pX(70), pY(40))
    && estado.equals ("pantalla18nollama")) {
    estado = ("pantalla17op2");
  } //AVANZAR ESCENA 18 NO LLAMA A ESCENA 19 NO LLAMA
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla18nollama")) {
    estado = ("pantalla19nollama");
  }
  //VOLVER ATRÁS ESCENA 19 NO LLAMA A ESCENA 18
  else if (botcon (pX(640), pY(545), pX(70), pY(40))
    && estado.equals ("pantalla19nollama")) {
    estado = ("pantalla18nollama");
  } //AVANZAR ESCENA 19 NO LLAMA A ESCENA 20
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla19nollama")) {
    estado = ("pantalla20nollama");
  } //VOLVER ATRÁS ESCENA 20 A ESCENA 19 NO LLAMA
  else if (botcon (pX(640), pY(545), pX(70), pY(40))
    && estado.equals ("pantalla20nollama")) {
    estado = ("pantalla19nollama");
  } // AVANZAR ESCENA 20 NO LLAMA A ESCENA 21
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla20nollama")) {
    estado = ("pantalla21nollama");
  } //VOLVER ATRÁS ESCENA 21 NO LLAMA A ESCENA 20
  else if (botcon (pX(640), pY(545), pX(70), pY(40))
    && estado.equals ("pantalla21nollama")) {
    estado = ("pantalla20nollama");
  } //AVANZAR ESCENA 21 NO LLAMA A ESCENA 22
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla21nollama")) {
    estado = ("pantalla22nollama");
  } //VOLVER ATRÁS ESCENA 22 NO LLAMA A ESCENA 21
  else if (botcon (pX(640), pY(545), pX(70), pY(40))
    && estado.equals ("pantalla22nollama")) {
    estado = ("pantalla21nollama");
  } //AVANZAR ESCENA 22 NO LLAMA A CRÉDITOS
  else if (botcon (pX(720), pY(545), pX(70), pY(40)) && estado.equals ("pantalla22nollama")) {
    estado = ("creditos");
  }
}
