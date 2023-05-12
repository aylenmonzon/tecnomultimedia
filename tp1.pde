// Aylen Abigail Monzon
//tp1, comision 1
//Parque Ecologico

PImage ecologico1;
PImage ecologico2;
PImage ecologico3;
PFont fuenteP1, fuenteP2, fuenteP3;
int contador=0;
int movXtexto1=0;
int movYtexto2=0;
int fade =0;

void setup() {
  size(640, 480);
  ecologico1=loadImage("ecologico1.jpg");
  ecologico2=loadImage("ecologico2.jpg");
  ecologico3=loadImage("ecologico3.jpg");

  fuenteP1=loadFont("Constantia-48.vlw");
  fuenteP2=loadFont("CourierNewPS-BoldMT-48.vlw");
  fuenteP3=loadFont("ForteMT-48.vlw");
};

void draw() {

  if (contador <560) {
    contador++;
  }

  if (contador < 180) {
    image(ecologico1, 0, 0, 640, 480);

    textFont(fuenteP1, 24);
    textAlign(CENTER, CENTER);
    fill(0);
    text("PARQUE ECOLOGICO", movXtexto1, 150);
    movXtexto1++;
  } else if (contador > 180 && contador < 360) {
    image(ecologico2, 0, 0, 640, 480);

    textFont(fuenteP2, 20);
    textAlign(CENTER, CENTER);
    fill(255);
    text("Ubicado en Villa Elisa por camino centenario \n cuenta con mas de 200 hectareas", 320, movYtexto2);
    movYtexto2++;
    
  } else if (contador > 360) {
    image(ecologico3, 0, 0, 640, 480);

    textFont(fuenteP3, 25);
    textAlign(CENTER, CENTER);
    fill(0, 0, 255, fade);
    text("Es lugar hermoso para ir a \n disfrutar de un dia de sol,\n con familia o amigos ", 150, 80);
    fade++;


    fill(18, 152, 6);
    rect(530, 420, 100, 50);
    textAlign(LEFT, CENTER);
    textSize(16);
    fill(0);
    text("Reinicio", 550, 445);
  }
}

void mousePressed() {

  if (contador > 360 && mouseX > 530 && mouseX < 630 && mouseY > 420 && mouseY < 470) {
    contador = 0;
    movXtexto1 = 0;
    movYtexto2 = 0;
    fade = 0;
  }
}
