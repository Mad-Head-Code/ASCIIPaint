String arr[][] = new String[64][64];
String brush = "*";
String abrush = " ";
PFont font;
void setup() {
  size(800, 640);
  noCursor();
  font = loadFont("f.vlw");
  textFont(font);
  for (int y = 0; y<64; y++) {
    for (int x = 0; x<64; x++) {
      arr[y][x] = " ";
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
    if(keyCode == UP){brush = ""+char(brush.charAt(0)+1);}
    if(keyCode == DOWN){brush = ""+char(brush.charAt(0)-1);}
    if(keyCode == LEFT){abrush = ""+char(abrush.charAt(0)+1);}
    if(keyCode == RIGHT){abrush = ""+char(abrush.charAt(0)-1);}
  
  
}
