char arr[][] = new char[64][64];
char brush = '*';
char abrush = ' ';
PFont font;
char e=0;
void setup() {
  size(800, 640);
  noCursor();
  font = loadFont("f.vlw");
  textFont(font);
  for (int y = 0; y<64; y++) {
    for (int x = 0; x<64; x++) {
      arr[y][x] = ' ';
    }
  }
}

void draw() {
  background(0);
  fill(255);
  textSize(10);
  text("_",(mouseX+5)/10*10,(mouseY+5)/10*10);
  text("BRUSH :["+brush+"]",700,60);
  text("ABRUSH:["+abrush+"]",700,70);
  text("[COPY]",680,610);
  text("[PASTE]",730,610);
  char s = (char)(e);
  for (int y = 0; y<48; y++) {
    for (int x = 0; x<16; x++) {
      text(s++, 650+x*10, 100+y*10);
      if(dist(((mouseX+5)/10)*10,((mouseY+5)/10)*10,650+x*10, 100+y*10)<5 && mousePressed){
        if(mouseButton == LEFT){
          brush = (char)(s-1);
        }
        if(mouseButton == RIGHT){
          abrush = (char)(s-1);
        }
      }
    }
  }
  for (int y = 0; y<64; y++) {
    text("||",640,(y+1)*10);
    for (int x = 0; x<64; x++) {
      text(arr[y][x], x*10, y*10);
    }
  }

  if (mousePressed && (mouseX+5)/10<64) {
    if (mouseButton == LEFT) {
      arr[(mouseY+5)/10][(mouseX+5)/10] = brush;
    } else {
      arr[(mouseY+5)/10][(mouseX+5)/10] = abrush;
    }
  }
}
  void keyPressed(){
    if(keyCode == UP){brush++;}
    if(keyCode == DOWN){brush--;}  
    if(keyCode == LEFT){abrush++;}
    if(keyCode == RIGHT){abrush--;}
    if(key=='1' && e>0){e-=16;}
    if(key=='3' && e<680){e+=16;}
  
}
