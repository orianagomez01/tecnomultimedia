class Canon{
 float x, y,tam, tam1;
 float vel;
 PImage Fug[]=new PImage  [6];
 // CONSTRUCTOR (setup del objeto)
 Canon(){
 x=1000;
 y=350;
 tam= 132;
 tam1= 52;
 vel= random(5,10);

  for (int i = 0 ; i <6 ; i++){
    Fug[i]=loadImage("fug_"+i+".png");
  }
 }
 // METODOS (funciones)
 void actualizar(){
    x=x-vel;
  if(x<-10){
    reciclar();
 }
 }
 void dibujar(){
     image(Fug[frameCount %6],x,y,tam,tam1);
 }
 
 void reciclar(){
    x=1000;
   y=350;
 vel= random(5,10);
 }
}
