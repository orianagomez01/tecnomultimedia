int c=40;
Ellipses [] e = new Ellipses[c];

void setup () {
  size (400, 400); 

  for (int i = 0; i<c; i++) {
    e[i] = new Ellipses(0,1, 0, 0);
  }
}

void draw () { 
  background(0);
  for (int i = 0; i<c; i++) {
    e[i].dibujar();
    e[i].mover();
    e[i].rotar();
}
}
