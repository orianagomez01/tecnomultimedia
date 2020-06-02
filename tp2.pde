//escena 1
PImage fondo;
PFont fuentetitulo;
String loverosie;
Float posytitulo;
float opacidadfondo;

// escena 2
PImage fotocreditos2;
float opacidadfotocreditos;
PFont fuentecreditos;
PFont fuentecreditoschiquito;
float posY;

//escena 6
PImage dolby;

void setup () {
  rectMode (CENTER);
background (0);
  size (798, 597);
  

//escena 1
posytitulo = 298.5;
loverosie= "Love, rosie";
fuentetitulo = loadFont ("DKLemonYellowSun-100.vlw");
fondo = loadImage ("fondo2.png");

//escena 1/2/3 cuadrado color negro
opacidadfondo = 0.1;

//escena 2
fotocreditos2 = loadImage ("fotocreditos2.png");
opacidadfotocreditos = 0.1;
fuentecreditos = loadFont ("BebasNeue-Regular-48.vlw");
fuentecreditoschiquito= loadFont ("BebasNeue-Regular-30.vlw");
posY=0;

//escena 6

dolby = loadImage ("dolbydigital.png");


}

void draw () {

//escena 1
noTint();
image (fondo, 0, 0);

textFont (fuentetitulo); 
textAlign (CENTER);
fill (188, 131, 131);
text (loverosie, width/2, posytitulo);

//cuadrado escena 1/2/3/4
fill (0, opacidadfondo);
rect (width/2, height/2 , 800, 800);

//escena 2
tint (255, opacidadfotocreditos);
image (fotocreditos2, 410, 220);

fill (255);
textFont (fuentecreditos);
text ("Personajes principales", 210, posY+800);

textFont (fuentecreditoschiquito);
text ("Rossie Dunne • Lily Collins", 210, posY+830);
text ("Alex Stewart • Sam Claflin", 210, posY+860);
text ("Greg • Christian Cooke", 210, posY+890);
text ("Ruby • Jaime Winstone", 210, posY+920);
text ("Bethany • Suki Waterhouse", 210, posY+950);
text ("Sally • Tamsin Egerton", 210, posY+980);
text ("Phil • Jaime Beamish", 210, posY+1010);
text ("Dennis Dunne • Lorcan Cranitch", 210, posY+1040);
text ("Alice Dunne • Ger Ryan", 210, posY+1070);

//escena 3
textFont (fuentecreditos);
text ("Personajes secundarios", 210, posY+1750);

textFont (fuentecreditoschiquito);
text ("Katie (12 años) • Lily Laight", 210, posY+1780);
text ("Toby (12 años) • Matthew Dillon", 210, posY+1810);
text ("Katie (5 años) • Rosa Molloy", 210, posY+1840);
text ("Clare • Sadhbh Malin", 210, posY+1870);
text ("Herb • Nick Lee", 210, posY+1900);
text ("Dick • Ciaran McGlynn", 210, posY+1930);
text ("Jonathan • Justin Holmes", 210, posY+1960);

//escena 4
textFont (fuentecreditos);
text ("Dirección", 210, posY+2400);

textFont (fuentecreditoschiquito);
text ("Director • Christian Ditter", 210, posY+2430);

text ("Asistente del director • Tony Aherne", 210, posY+2490); 
text ("Asistenta del director • Catherine Dunne", 210, posY+2520);

text ("Operador de cámara • Markus Eckert", 210, posY+2580);
text ("Efectos visuales • Dominik Trimborn", 210, posY+2610);

text ("Coordinador • Joe Condren", 210, posY+2670);
text ("Coordinadora extra • Marie Celine O'Reilly", 216, posY+2700);
text ("Coordinadora de producción • Jane McCabe", 216, posY+2730);

//escena 5

textFont (fuentecreditos);
text ("Música", 210, posY+3200);

textFont (fuentecreditoschiquito);
text ("Supervisor de música • Christoph Becker", 210, posY+3230);
text ("Supervisora de música • Pia Hoffmann", 210, posY+3260);

text ("Consultor musical (UK) • Oliver Brown", 210, posY+3310);
text ("Consultor musical • Leonie Prendergast", 210, posY+3340);
text ("Orquesta • Tilo Heinrich", 210, posY+3370);
text ("Preparación • Heiko Music", 210, posY+3400);
text ("Conducción • Andy Brown", 210, posY+3430);

//escena 6

text ("Guitarrista • Dimitri Lavrentiev", 210, posY+3500);
text ("Guitarrista • Thomas Müller", 210, posY+3530);

text ("Ingeniero • Thomas Lehmann", 210, posY+3590);

text ("Editor de música • Stefan Busch", 210, posY+3660);
text ("Editor de música • Heiko Müller", 210, posY+3690);

image (dolby, 150, posY+3750, 100, 100);


//ACTUALIZACION DE VARIABLES

//escena 1/2 act. desaparece fondo
posytitulo = posytitulo +0.5;
opacidadfondo = opacidadfondo + 0.6;
opacidadfotocreditos = opacidadfotocreditos + 0.5;

//escena 2/3/4/5
posY= posY - 0.4;

println (posytitulo);
println (opacidadfotocreditos);


}
