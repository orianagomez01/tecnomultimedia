PImage imagen1, imagen2, imagen3, imagen4, imagen5, imagen6, imagen7, imagen8, imagen9, imagen10, imagen11;
PImage imagenhaciaadelante, imagenhaciaatras;
PImage imagenarmario1, imagenarmario2, imagendebajocama1, imagendebajocama2, imagenfinal;
PImage imagen16, imagen17, imagen18, imagen19sieligeno,imagengato, imagengatoyendose, imagengatoescapandose, imagenmadreenojada;
PImage imagencreditos, imagenrepuesto, imagennenesasustados,imagensillaman, imagenmadrellegando, imagengatofondo, imagengatointentandoreparar, imagenauto; 
PFont fuente1, fuente2, fuente3;
String estado;

void setup() {
  size (800, 600);

  fuente1 = loadFont ("DKLemonYellowSun-48.vlw");
  //FUENTE PARA LA NARRACIÓN
  fuente2 = loadFont ("Dominican-48.vlw");
  fuente3 = loadFont ("DKLemonYellowSun-32.vlw");

  estado = "bienvenidos";
  imagen1 = loadImage ("imagen1.png");
  imagen2 = loadImage ("imagen2.png");
  imagen3 = loadImage ("imagen3.png");
  imagen4 = loadImage ("imagen4.png");
  imagen5 = loadImage ("imagen5.png");
  imagen6 = loadImage ("imagen6.png");
  imagen7 = loadImage ("imagen7.png");
  imagen8 = loadImage ("imagen8.png");
  imagen9 = loadImage ("imagen9.png");
  imagen10 = loadImage ("imagen10.png");
  imagen11 = loadImage ("imagen11.png");
  imagenarmario1 = loadImage ("imagenarmario1.png");
  imagenarmario2 = loadImage ("imagenarmario2.png");
  imagendebajocama1 = loadImage ("imagendebajocama1.png");
  imagendebajocama2 = loadImage ("imagendebajocama2.png");
  imagen16 = loadImage ("imagen16.png");
  imagen17 = loadImage ("imagen17.png");
  imagen18 = loadImage ("imagen18.png");
 imagen19sieligeno = loadImage ("imagen19sieligeno.png");
 imagengato = loadImage ("imagengato.png");
imagengatoyendose = loadImage ("imagengatoyendose.png");
imagencreditos = loadImage ("imagencreditos.png");
imagenrepuesto = loadImage ("imagenrepuesto.png");
imagennenesasustados = loadImage ("imagennenesasustados.png");
imagensillaman = loadImage ("imagensillaman.png");
imagenmadrellegando = loadImage ("imagenmadrellegando.png");
imagengatofondo = loadImage ("imagengatofondof.png");
imagengatointentandoreparar = loadImage ("imagengatointentandoreparar.png");
imagenauto= loadImage ("imagenauto.png");
imagengatoescapandose = loadImage ("imagengatoescapandose.png");
imagenmadreenojada = loadImage ("imagenmadreenojada.png");
imagenfinal= loadImage ("imagenfinal.png");

  //FLECHAS
  //FLECHA PARA AVANZAR
  imagenhaciaadelante = loadImage ("flechahaciaadelante.png");
  //FLECHA PARA ATRÁS
  imagenhaciaatras = loadImage ("flechahaciaatras.png");
}

void draw () {

  //PRIMERA PANTALLA (ENTER)
  if (estado.equals ("bienvenidos")) {  
    image (imagen1, 0, 0);
    textAlign(CENTER, CENTER);
    textFont (fuente1);
    text ("Aprete ENTER para comenzar", width/2, 560);
  }

  //PANTALLA 1 DE NARRACION
  else if (estado.equals ("pantalla1")) {
    //FALTA PONER BOTON
    image(imagen2, 0, 0);

    //TEXTO 1 DE PANTALLA DE NARRACION 1
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("En Anville, una ciudad en la que", width/2, 43);
    text ("todos se conocen", 400, 70);
    
    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
  }
  //PANTALLA 2 DE NARRACIÓN
  else if ( estado.equals ("pantalla2")) {
    image (imagen3, 0, 0);

    //TEXTO 2
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("Viven dos niños llamados Conrad y Sally con su madre", 400, 43);

    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
  }

  //PANTALLA 3 DE NARRACIÓN
  else if ( estado. equals ("pantalla3")) {
    image (imagen4, 0, 0);

    //TEXTO 3 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("Su madre está organizando una fiesta de oficina en", 400, 43);
    text ("su casa y les ordena a los niños que no deben romper", 400, 70);
    text ("nada de la casa", 400, 100);

    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
  }

  //PANTALLA 4 DE NARRACIÓN  
  else if (estado.equals ("pantalla4")) {
    image (imagen5, 0, 0);
    //TEXTO 4 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("Al mencionarles esto, llega Kwan, la señora", 400, 43);
    text ("que los cuida algunas veces y la madre se va", 400, 70);

    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
  }

  //PANTALLA 5 DE NARRACIÓN
  else if (estado.equals ("pantalla5")) {
    image (imagen6, 0, 0);

    //TEXTO 5 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("Kwan, al ser mayor de edad, se queda dormida", 400, 43);
    text ("mirando el televisor", 400, 70);

    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
  }

  //ESCENA 6 DE NARRACIÓN
  else if (estado.equals ("pantalla6")) {
    image (imagen7, 0, 0);

    //TEXTO 6 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("Los niños aburridos ya que no debían tocar nada,", 400, 43);
    text ("escucharon un ruido", 400, 70);

    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
  }

  //ESCENA 7 DE NARRACIÓN (ESCALERAS)
  else if (estado.equals ("pantalla7")) {
    image (imagen8, 0, 0);
    //TEXTO 6 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("El perro comienza a ladrar mirando hacia", 400, 43);
    text ("el piso de arriba", 400, 70);

    //TEXTO DE INTERACCIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente1);
    text ("Aprete click en la escalera para subir", 400, 570);

    //BOTON PARA ATRÁS
    fill (0);
    rect (720, 545, 70, 40); 
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 720, 545, 70, 40);
  }

  //ESCENA 8 DE NARRACIÓN 
  else if (estado.equals ("pantalla8")) {
    image (imagen9, 0, 0);

    //TEXTO 7 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("A los niños les pareció oir ese ruido desde", 400, 43);
    text ("el armario", 400, 70);

//BOTON PARA ATRÁS
    fill (0);
    rect (720, 545, 70, 40); 
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 720, 545, 70, 40);

    //TEXTO DE INTERACCIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente1);
    textSize (46);
    text ("Aprete click en la puerta para continuar", 400, 570);

  }

  //ESCENA 9 DE NARRACIÓN
  else if (estado.equals ("pantalla9")) {
    image (imagen10, 0, 0);

    //TEXTO 8 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("Detrás de ese armario aparece un gato de sombrero ", 400, 43);
    text ("rojo y blanco", 400, 70); 
   

    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
  }

  //ESCENA 10 DE INTERACCIÓN
  else if (estado.equals ("pantalla10")) {
    image (imagen11, 0, 0);

//TEXTO 9 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("Asustados, los niños comienzan a correr", 400, 43);
    text ("buscando un lugar donde esconderse", 400, 70); 

    //RECTANGULOS DE OPCIONES
    //RECTANGULO IZQUIERDO
    fill (0);
    rect (width/2-300, height/2+100, 250, 90);
    //TEXTO OPCIÓN 1
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente3);
    text ("Esconderse en el", width/2-175, height/2+130);
    text ("armario", width/2-175, height/2+165);

    //RECTANGULO DERECHO
    fill (0);
    rect (width/2+75, height/2+100, 250, 90);
    //TEXTO OPCIÓN 2
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente3);
    text ("Esconderse debajo", width/2+200, height/2+130);
    text ("de la cama", width/2+200, height/2+165);

    //BOTON PARA ATRÁS
    fill (0);
    rect (720, 545, 70, 40); 
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 720, 545, 70, 40);
  }
  //ESCENA 11 OPCIÓN 1
  else if (estado.equals ("pantalla11")) {
    image (imagenarmario1, 0, 0);

    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
  }
  //ESCENA 12 OPCION 1
  else if (estado. equals ("pantalla12")) {
    image (imagenarmario2, 0, 0);

    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
  }
  //ESCENA 11 OPCIÓN 2
  else if (estado.equals ("pantalla11op2")) {
    image (imagendebajocama1, 0, 0);

    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
  }

  //ESCENA 12 OPCIÓN 2
  else if (estado.equals ("pantalla12op2")) {
    image (imagendebajocama2, 0, 0);

    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
  }

  //ESCENA 13
  else if (estado.equals ("pantalla13")) {
    image (imagen16, 0, 0);

    //TEXTO 10(13) DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("El gato los hace entrar en confianza contandoles", 400, 43);
    text ("chistes y los invita a divertirse saltando", 400, 70); 
    text ("arriba del sillón", 400, 100);

//TEXTO DE INTERACCIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente1);
    textSize (46);
    text ("Aprete click en el sillón para continuar", 400, 570);

//BOTON PARA ATRÁS
    fill (0);
    rect (720, 545, 70, 40); 
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 720, 545, 70, 40);
  }

  //ESCENA 14
  else if (estado.equals ("pantalla14")) { 
    image (imagen17, 0, 0);
    
    //TEXTO 11(13) DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2); 
    text ("Conrad le dice a Sally que se va a subir al sillón y", 400, 43);
    text ("que no va a suceder nada", 400, 70); 
    
    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS 
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
  }

//ESCENA 15
else if (estado.equals ("pantalla15")) {
image (imagen18,0,0); 

//TEXTO 12 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2); 
    text ("Sally comienza a dudar si subirse al sillón o no", 400, 43);
   
   //RECTANGULOS DE OPCIONES
    //RECTANGULO IZQUIERDO
    fill (0);
    rect (width/2-300, height/2+100, 250, 90);
    //TEXTO OPCIÓN 1
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente3);
    text ("no subirse al", width/2-175, height/2+130);
    text ("sillón", width/2-175, height/2+165);

    //RECTANGULO DERECHO
    fill (0);
    rect (width/2+75, height/2+100, 250, 90);
    //TEXTO OPCIÓN 2
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente3);
    text ("subirse al", width/2+200, height/2+130);
    text ("sillón", width/2+200, height/2+165); 
    
    //BOTON PARA ATRÁS
    fill (0);
    rect (720, 545, 70, 40); 
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 720, 545, 70, 40);
}
//ESCENA 16
else if (estado.equals("pantalla16")) {
image (imagen19sieligeno,0,0); 

//TEXTO 13 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2); 
    text ("Sally se queda mirando como se divierten", 400, 43);
    
//BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS 
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
}
else if (estado.equals ("pantalla17op1")) {
image (imagengato, 0,0);
 //TEXTO 14 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2); 
    text ("Luego de un rato, el gato les comenta que se aburrió", 400, 43);
    text ("y que tiene que seguir entreteniendo a otros niños", 400, 70); 
 //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
}
else if (estado.equals ("pantalla18op1")) {
image (imagengatoyendose, 0, 0);

//BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
}

else if (estado.equals ("creditos")) {
image (imagencreditos, 0, 0);

//TEXTO FINAL 
textAlign (CENTER, CENTER);
textFont (fuente2);
text ("Tecnología Multimedial I", width/2, 140);
text ("Trabajo Práctico N3", width/2, 210);
text ("Oriana Gomez", width/2, 250);
text ("Cursada año 2020", width/2, 310);
text ("Facultad de Artes - UNLP", width/2, 350);
text ("Docente: Matias Jauregui Lorda", width/2, 410);

//RECTÁNGULO COMENZAR OTRA VEZ
fill (150);
rect (width/2+220, 500, 160, 70);

//TEXTO DE VOLVER A COMENZAR
fill (255);
textAlign (CENTER, CENTER);
textFont (fuente3);
text ("Volver al", width/2+300, 520);
text ("comienzo", width/2+300, 550);
}
//ESCENA 16 OPCIÓN 2
else if (estado.equals ("pantalla16op2")){
image (imagenrepuesto, 0, 0);

//BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
}
// ESCENA 17 OPCIÓN 2
else if (estado.equals ("pantalla17op2")) {
image (imagennenesasustados, 0, 0);

//TEXTO 14 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("Todo era diversión hasta que se rompió el sillón", 400, 43);
    text ("y los niños tienen que decidir qué hacer", 400, 70);

//RECTANGULOS DE OPCIONES
    //RECTANGULO IZQUIERDO
    fill (0);
    rect (width/2-300, height/2+100, 250, 90);
    //TEXTO OPCIÓN 1
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente3);
    text ("llamar a la", width/2-175, height/2+130);
    text ("madre", width/2-175, height/2+165);

    //RECTANGULO DERECHO
    fill (0);
    rect (width/2+75, height/2+100, 250, 90);
    //TEXTO OPCIÓN 2
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente3);
    text ("no llamar a", width/2+200, height/2+130);
    text ("la madre", width/2+200, height/2+165); 
    
    //BOTON PARA ATRÁS
    fill (0);
    rect (720, 545, 70, 40); 
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 720, 545, 70, 40);
}
else if (estado.equals ("pantalla18sillama")) {
image (imagensillaman, 0, 0);

//TEXTO 15 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("Sally decidió ser valiente y comentarle lo sucedido", 400, 43);
    text ("a su madre omitiendo la parte del gato", 400, 70);
    
    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
  }
  
  else if (estado.equals ("pantalla19sillama")) {
  image (imagenauto, 0, 0);

//BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
}
else if (estado.equals ("pantalla20sillama")) {
image (imagengatofondo, 0, 0);

//TEXTO 16 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("El gato les explica que debe irse porque no pueden", 400, 43);
    text ("verlos otros humanos que no sean ellos", 400, 70);

//BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
}
else if (estado.equals ("pantalla18nollama")) {
image (imagengatointentandoreparar, 0, 0);

//TEXTO 17 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("El gato sacó de su sombrero una máquina para arreglar", 400, 43);
    text ("el sillón pero no lo logra", 400, 70);
    
    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
    }
    else if (estado.equals ("pantalla19nollama")) {
    image (imagenmadrellegando, 0, 0);
    
    //TEXTO 18 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("En ese instante, escuchan un ruido de auto y resulta", 400, 43);
    text ("ser que su madre llegó antes de tiempo", 400, 70);
    
    //BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
    }
    else if (estado.equals ("pantalla20nollama")) {
    image (imagengatoescapandose, 0, 0);
  
  //TEXTO 19 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("El gato se va por la ventana de atrás para que", 400, 43);
    text ("la madre de los niños no lo vea", 400, 70);
//BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);

}
else if (estado.equals ("pantalla21nollama")) {
image (imagenmadreenojada, 0, 0);
//TEXTO 20 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("La madre cuando entra a la casa, los castiga al ver", 400, 43);
    text ("el sillón porque desobedecieron lo que les dijo", 400, 70);
//BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);

}
else if (estado.equals ("pantalla22nollama")) {
image (imagenfinal, 0, 0);
//TEXTO 21 DE NARRACIÓN
    fill (255);
    textAlign (CENTER, CENTER);
    textFont (fuente2);
    text ("Pero aunque hayan desobedecido a su madre, ellos", 400, 43);
    text ("tuvieron el mejor día de sus vidas", 400, 70);
//BOTON PARA SEGUIR
    fill (0);
    rect (720, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaadelante, 720, 545, 70, 40);
    //BOTON PARA VOLVER ATRÁS
    fill (0);
    rect (640, 545, 70, 40);
    //IMAGEN DE FLECHA
    image (imagenhaciaatras, 640, 545, 70, 40);
}
}

void keyPressed () {
  if (keyCode == ' ' && estado.equals ("bienvenidos")) {
    estado = "pantalla1";
  }
}

void mousePressed () {
  //BOTON QUE PASA DE ANVILLE A LOS NIÑOS
  if ( mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla1")) {
    estado = "pantalla2";
  } //VOLVER ATRÁS
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla2")) {
    estado = ("pantalla1");
  }

  //CAMBIO DE CONRAD-SALLY A IMAGEN DE LA MADRE
  else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla2")) {
    estado = "pantalla3";
  } //VOLVER ATRÁS: A CONRAD-SALLY
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla3")) {
    estado = ("pantalla2");
  }

  //CAMBIO DE MADRE A MADRE ABRIENDOLE A LA NIÑERA LA PUERTA
  else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla3")) {
    estado = "pantalla4";
  }
  //VOLVER ATRÁS ESCENA 4 A ESCENA 3
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla4")) {
    estado = ("pantalla3");
  }

  //CAMBIO DE ABRIR A LA NIÑERA A NIÑERA DURMIENDO - ESCENA 4 A 5
  else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla4")) {
    estado = "pantalla5";
  }
  //VOLVER ATRÁS (NIÑERA DURMIENDO A ABRIR NIÑERA) - ESCENA 5 A 4
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla5")) {
    estado = ("pantalla4");
  }
  //CAMBIO DE NIÑERA DURMIENDO A NIÑOS ABURRIDOS - ESCENA 5-6
  else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla5")) {
    estado = "pantalla6";
  }
  //VOLVER ATRÁS (NIÑOS ABURRIDOS A NIÑERA DURMIENDO) - ESCENA 6 A 5
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla6")) {
    estado = ("pantalla5");
  }
  //CAMBIO DE NIÑOS ABURRIDOS A ESCALERAS - ESCENA 6 A 7 
  else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla6")) {
    estado = "pantalla7";
  }
  //VOLVER ATRÁS (ESCALERAS- NIÑOS ABURRIDOS) - ESCENA 7 A 6
  else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla7")) {
    estado = ("pantalla6");
  }
  //CAMBIO DE ESCENA DE APRETAR CLICK EN ESCALERAS A ESCENA 8 - ESCENA 7 - 8
  else if (mouseX >=200 && mouseX <=600 && mouseY >= 0 && mouseY <= 600 
    && pmouseX >= 200 && pmouseX <= 600 && pmouseY >= 0 && pmouseY <= 600 
    && estado.equals ("pantalla7")) {
    estado = ("pantalla8");
  }
  //VOLVER ATRÁS - ESCENA 8-7
 else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla8")) {
    estado = ("pantalla7");
  }
  //CAMBIO DE ESCENA 8 A 9 (ARMARIO A GATO)
  else if (mouseX >=0 && mouseX <=600 && mouseY >= 0 && mouseY <= 800 
    && pmouseX >= 0 && pmouseX <= 600 && pmouseY >= 0 && pmouseY <= 800 
    && estado.equals ("pantalla8")) {
    estado = "pantalla9";
  }
  //VOLVER ATRÁS - ESCENA 9-8
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla9")) {
    estado = ("pantalla8");
  }
  //CAMBIO DE ESCENA - ESCENA 9- 10
  else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla9")) {
    estado = "pantalla10";
  }
  //BOTON HACIA ATRÁS ESCENA 10 A 9 
  else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla10")) {
    estado = ("pantalla9");
  }
  //CAMBIO DE ESCENA 10 A OPCIÓN 1 
  else if (mouseX >= 100 && mouseX <= 350 && mouseY >= 400 && mouseY <= 490
    && pmouseX >= 100 && pmouseX <= 350 && pmouseY >= 400 && mouseY <= 490
    && estado. equals ("pantalla10")) {
    estado = "pantalla11";
  }
  //VOLVER ATRÁS DE ESCENA 11 (OPCIÓN 1) - 10
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla11")) {
    estado = ("pantalla10");
  }
  //AVANZAR HACIA ESCENA 12 (OPCIÓN 1) - ESCENA 11- 12 
  else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla11")) {
    estado = "pantalla12";
  }
  //VOLVER ATRÁS DE ESCENA 12 (OPCIÓN 1) - ESCENA 12 -11
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla12")) {
    estado = ("pantalla11");
  }
  //CAMBIO DE ESCENA 10 A OPCIÓN 2 
  else if (mouseX >= 475 && mouseX <= 725 && mouseY >= 400 && mouseY <= 490
    && pmouseX >= 475 && pmouseX <= 725 && pmouseY >= 400 && mouseY <= 490
    && estado. equals ("pantalla10")) {
    estado = "pantalla11op2";
  }
  //VOLVER ATRÁS DE ESCENA 11 (OPCIÓN 2) A ESCENA 10
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla11op2")) {
    estado = ("pantalla10");
  }
  //AVANZAR DE ESCENA 11 (OPCIÓN 2) A ESCENA 12
  else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla11op2")) {
    estado = "pantalla12op2";
  }
  //VOLVER ATRÁS DE ESCENA 12 (OPCIÓN 2) A ESCENA 11
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla12op2")) {
    estado = ("pantalla11op2");
  }
  //AVANZAR DE ESCENA 12 (OPCIÓN 1) A ESCENA 13
  else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla12")) {
    estado = "pantalla13";
  }
  //AVANZAR DE ESCENA 12 (OPCIÓN 2) A ESCENA 13
   else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla12op2")) {
    estado = "pantalla13";
    }    
  //VOLVER ATRÁS ESCENA 13 A OPCIONES
   else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla13")) {
    estado = ("pantalla10");
  }
  //AVANZAR A PANTALLA 14 - ESCENA 13 - 14- MODIFICAR
  
 else if (mouseX >=340 && mouseX <= 770 && mouseY >=400 && mouseY <=600 
    && pmouseX >=340 && pmouseX <=770 && pmouseY >=400 && pmouseY <=600 
    && estado.equals ("pantalla13")) {
    estado = ("pantalla14");
  }
  //VOLVER ATRÁS ESCENA 14-13 
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla14")) {
    estado = ("pantalla13");
    }
  //AVANZAR ESCENA 14-15
  else if (mouseX >=720 && mouseX <=790 && mouseY >=545 && mouseY <=585 
    && pmouseX >=720 && pmouseX <=790 && pmouseY >=545 && pmouseY <=585 
    && estado.equals ("pantalla14")) {
    estado = ("pantalla15");
  }
  //VOLVER ATRÁS ESCENA 15-14
  else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla15")) {
    estado = ("pantalla14");
    }
  //AVANZAR ESCENA 15-16 (OPCIÓN 1)
  else if (mouseX >= 100 && mouseX <= 350 && mouseY >= 400 && mouseY <= 490
    && pmouseX >= 100 && pmouseX <= 350 && pmouseY >= 400 && mouseY <= 490
    && estado. equals ("pantalla15")) {
    estado = "pantalla16";
    }
    //VOLVER ATRÁS ESCENA 16 (OPCIÓN 1) A ESCENA 15
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla16")) {
    estado = ("pantalla15");
  }
  //AVANZAR ESCENA 16 A ESCENA 17
  else if (mouseX >=720 && mouseX <=790 && mouseY >=545 && mouseY <=585 
    && pmouseX >=720 && pmouseX <=790 && pmouseY >=545 && pmouseY <=585 
    && estado.equals ("pantalla16")) {
    estado = ("pantalla17op1");
    }
    //VOLVER ATRÁS ESCENA 17 OPCIÓN 1- ESCENA 16
    else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla17op1")) {
    estado = ("pantalla16");
  }
  //AVANZAR ESCENA 17 A 18
  else if (mouseX >=720 && mouseX <=790 && mouseY >=545 && mouseY <=585 
    && pmouseX >=720 && pmouseX <=790 && pmouseY >=545 && pmouseY <=585 
    && estado.equals ("pantalla17op1")) {
    estado = ("pantalla18op1");
    }
  // AVANZAR ESCENA 18 A CREDITOS
  else if (mouseX >=720 && mouseX <=790 && mouseY >=545 && mouseY <=585 
    && pmouseX >=720 && pmouseX <=790 && pmouseY >=545 && pmouseY <=585 
    && estado.equals ("pantalla18op1")) {
    estado = ("creditos");
    }
  //IR DE CRÉDITOS AL INICIO - FIJARSE SI ESTÁN BIEN LOS NÚMEROS
  //rect (width/2+220, 500, 160, 70);
  else if (mouseX >= 620+30 && mouseX <= 690+30 && mouseY >= 500 && mouseY <=570
  && pmouseX >= 620+30 && pmouseX <= 690+30 && pmouseY >= 500 && pmouseY <= 570 
  && estado. equals ("creditos")) {
  estado = ("bienvenidos");
  }
  //AVANZAR DE ESCENA 15 A ESCENA 16 (OPCIÓN 2)
  else if (mouseX >= 475 && mouseX <= 725 && mouseY >= 400 && mouseY <= 490
    && pmouseX >= 475 && pmouseX <= 725 && pmouseY >= 400 && pmouseY <= 490
    && estado. equals ("pantalla15")) {
    estado = "pantalla16op2";
    }
  // VOLVER ATRÁS ESCENA 16 OPCIÓN 2 A ESCENA 15   
    else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla16op2")) {
    estado = ("pantalla15");
  }
  //AVANZAR ESCENA 16 OPCIÓN 2 A ESCENA 17 OPCIÓN 2
   else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla16op2")) {
    estado = "pantalla17op2";
  }
  //VOLVER ATRÁS ESCENA 17 OPCIÓN 2 A ESCENA 16 
  else if (mouseX >=720 && mouseX <=790 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 720 && pmouseX <= 790 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla17op2")) {
    estado = ("pantalla16op2");
  }
  //AVANZAR ESCENA 17 OPCIONES A ESCENA 18 SI LLAMAN A LA MADRE
  else if (mouseX >= 100 && mouseX <= 350 && mouseY >= 400 && mouseY <= 490
    && pmouseX >= 100 && pmouseX <= 350 && pmouseY >= 400 && mouseY <= 490
    && estado. equals ("pantalla17op2")) {
    estado = "pantalla18sillama";
  }
  //VOLVER ATRÁS ESCENA 18 SI LLAMAN A LA MADRE A ESCENA 17 OPCIÓN 2 PARTE DE OPCIONES
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla18sillama")) {
    estado = ("pantalla17op2");
  } //AVANZAR DE ESCENA 18 SI LLAMAN A LA MADRE A ESCENA 19 
  else if (mouseX >=720 && mouseX <=790 && mouseY >=545 && mouseY <=585 
    && pmouseX >=720 && pmouseX <=790 && pmouseY >=545 && pmouseY <=585 
    && estado.equals ("pantalla18sillama")) {
    estado = ("pantalla19sillama");
    } // VOLVER ATRÁS ESCENA 19 SI LLAMAN A ESCENA 18
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla19sillama")) {
    estado = ("pantalla18sillama");
  } //AVANZAR ESCENA 19 SI LLAMAN A MADRE A ESCENA 20
  else if (mouseX >=720 && mouseX <=790 && mouseY >=545 && mouseY <=585 
    && pmouseX >=720 && pmouseX <=790 && pmouseY >=545 && pmouseY <=585 
    && estado.equals ("pantalla19sillama")) {
    estado = ("pantalla20sillama");
    }// VOLVER ATRÁS ESCENA 20 SI LLAMAN A ESCENA 19
  else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla20sillama")) {
    estado = ("pantalla19sillama");
  } //AVANZAR ESCENA 20 A ESCENA DEL GATO YENDOSE 
else if (mouseX >=720 && mouseX <=790 && mouseY >=545 && mouseY <=585 
    && pmouseX >=720 && pmouseX <=790 && pmouseY >=545 && pmouseY <=585 
    && estado.equals ("pantalla20sillama")) {
    estado = ("pantalla18op1");
    } // AVANZAR ESCENA 17 DE OPCIONES A ESCENA 18 NO LLAMA
else if (mouseX >= 475 && mouseX <= 725 && mouseY >= 400 && mouseY <= 490
    && pmouseX >= 475 && pmouseX <= 725 && pmouseY >= 400 && mouseY <= 490
    && estado. equals ("pantalla17op2")) {
    estado = "pantalla18nollama";
  } // VOLVER ATRÁS ESCENA 18 NO LLAMA A ESCENA 17 DE OPCIONES
else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla18nollama")) {
    estado = ("pantalla17op2");
  } //AVANZAR ESCENA 18 NO LLAMA A ESCENA 19 NO LLAMA
  else if (mouseX >=720 && mouseX <=790 && mouseY >=545 && mouseY <=585 
    && pmouseX >=720 && pmouseX <=790 && pmouseY >=545 && pmouseY <=585 
    && estado.equals ("pantalla18nollama")) {
    estado = ("pantalla19nollama");
    }
   //VOLVER ATRÁS ESCENA 19 NO LLAMA A ESCENA 18
 else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla19nollama")) {
    estado = ("pantalla18nollama");
  } //AVANZAR ESCENA 19 NO LLAMA A ESCENA 20
  else if (mouseX >=720 && mouseX <=790 && mouseY >=545 && mouseY <=585 
    && pmouseX >=720 && pmouseX <=790 && pmouseY >=545 && pmouseY <=585 
    && estado.equals ("pantalla19nollama")) {
    estado = ("pantalla20nollama");
    } //VOLVER ATRÁS ESCENA 20 A ESCENA 19 NO LLAMA
     else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla20nollama")) {
    estado = ("pantalla19nollama");
  } // AVANZAR ESCENA 20 NO LLAMA A ESCENA 21
   else if (mouseX >=720 && mouseX <=790 && mouseY >=545 && mouseY <=585 
    && pmouseX >=720 && pmouseX <=790 && pmouseY >=545 && pmouseY <=585 
    && estado.equals ("pantalla20nollama")) {
    estado = ("pantalla21nollama");
    } //VOLVER ATRÁS ESCENA 21 NO LLAMA A ESCENA 20
    else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla21nollama")) {
    estado = ("pantalla20nollama");
  } //AVANZAR ESCENA 21 NO LLAMA A ESCENA 22
  else if (mouseX >=720 && mouseX <=790 && mouseY >=545 && mouseY <=585 
    && pmouseX >=720 && pmouseX <=790 && pmouseY >=545 && pmouseY <=585 
    && estado.equals ("pantalla21nollama")) {
    estado = ("pantalla22nollama");
    } //VOLVER ATRÁS ESCENA 22 NO LLAMA A ESCENA 21
    else if (mouseX >=640 && mouseX <=710 && mouseY >= 545 && mouseY <= 585 
    && pmouseX >= 640 && pmouseX <= 710 && pmouseY >= 545 && pmouseY <= 585 
    && estado.equals ("pantalla22nollama")) {
    estado = ("pantalla21nollama");
  } //AVANZAR ESCENA 22 NO LLAMA A CRÉDITOS
     else if (mouseX >=720 && mouseX <=790 && mouseY >=545 && mouseY <=585 
    && pmouseX >=720 && pmouseX <=790 && pmouseY >=545 && pmouseY <=585 
    && estado.equals ("pantalla22nollama")) {
    estado = ("creditos");
    }
  }
