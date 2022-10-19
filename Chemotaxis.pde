Walker [] hydro;
Oxy [] oxygen;
water [] wat;
boolean cont = false;
void setup(){
  size(500,500);
  hydro = new Walker[25];
  oxygen = new Oxy[25];
  wat = new water[25];
  for(int i = 0; i < hydro.length; i++){
    hydro[i] = new Walker(); 
    
  }
  for(int i = 0; i < oxygen.length; i++){
    oxygen[i] = new Oxy(); 
  }
  for(int i = 0; i < wat.length; i++){
    wat[i] = new water();
  }
}
void draw(){
  background(0);
  for(int i = 0; i < hydro.length; i++){
    hydro[i].show();
    hydro[i].walk();
  }
   for(int i = 0; i < oxygen.length; i++){
    oxygen[i].show();
    oxygen[i].walk();
  }
  if(cont == true){
      background(0);
      for(int i = 0; i < wat.length; i++){
        wat[i].show();
        wat[i].walk();
      }
    }
}


class Walker{
  int myX, myY;
  Walker(){
    myX = (int)(Math.random()*480)+10;
    myY = (int)(Math.random()*480)+10;
  }
  void walk(){
    if(mouseX > myX){
       myX = myX + (int)(Math.random()*5)-1;
    }else{
       myX = myX + (int)(Math.random()*5)-3;
    }
    if(mouseY > myY){
       myY = myY + (int)(Math.random()*5)-1;
    }else{
       myY = myY + (int)(Math.random()*5)-3;
    }
  }
  void show(){
      fill(255,0,0);
      ellipse(myX,myY, 30,30);
      fill(0,0,0);
      text("H", myX-5, myY+5);
  
  }
}
class Oxy{
  int myX, myY;
  Oxy(){
    myX = (int)(Math.random()*480)+10;
    myY = (int)(Math.random()*480)+10;
  }
  void walk(){
    if(mouseX > myX){
       myX = myX + (int)(Math.random()*5)-1;
    }else{
       myX = myX + (int)(Math.random()*5)-3;
    }
    if(mouseY > myY){
       myY = myY + (int)(Math.random()*5)-1;
    }else{
       myY = myY + (int)(Math.random()*5)-3;
    }
    if(mouseX == myX && mouseY == myY){
      cont = true;
    }
  }
  void show(){
    fill(0,200,255);
    ellipse(myX,myY, 30,30);
    ellipse(myX+15,myY, 30,30);
    fill(0,0,0);
    text("O", myX - 10, myY+5);
    text("O", myX +10,myY+5);
 }
}

class water{
  int x, y;
  water(){
  x = (int)(Math.random()*480)+10;
    y = (int)(Math.random()*480)+10;
  }
  void walk(){
    x = x + (int)(Math.random()*5)-2;
    y = y + (int)(Math.random()*5)-2;

  }
  void show(){
    fill(0,200,255);
    ellipse(x-5,y, 30,30);
    ellipse(x+25,y, 30,30);
    fill(255,0,0);
    ellipse(x+8,y-20,30,30);
    fill(0,0,0);
    text("O", x - 10, y+5);
    text("O", x +25,y+5);
    text("H", x+5,y-15);
 }
}
