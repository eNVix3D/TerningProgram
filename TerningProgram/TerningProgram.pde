//Nicklas 2i | Programmering Terning | 30.11.2021 

int rollCounter = 0;
int[] rolls = new int[100];

void setup(){
 size(500,500); 
}

void draw() {

 clear();
 
 displayButton("Throw",10,10);
 
 displayButton("Delete",390,10);

 displayHistogram(rolls);
  
  if (newRollPressed(mouseX,mouseY) && rollCounter < 99){
   rollCounter++; 
   rolls[rollCounter]=diceRoll();
  }

  if (deleteRollPressed(mouseX,mouseY) && rollCounter > 0) {
   rolls[rollCounter]=0;
   rollCounter--;
  }
}

int diceRoll(){
  return(int(random(0,7)));
}

void displayButton(String text, int x, int y){
 fill(255);
  rect(x,y,100,50); 
 fill(0);
 textSize(20);
 text(text,x+10,y+25);
}

boolean newRollPressed(int x, int y){
   if (x > 10 && x < 110 && y > 10 && y < 60 && mousePressed){
return true;
 } else { return false;
 }
}

boolean deleteRollPressed(int x, int y){
   if (x > 390 && x < 490 && y > 10 && y < 60 && mousePressed){
     return true;
   } else { return false;
   }
   }


void displayHistogram(int[] r){
int one = 0;
int two = 0;
int three = 0;
int four = 0;
int five = 0;
int six = 0;

for (int i=0 ; i<r.length ; i++){
if (r[i]==1){
 one++; 
}
if (r[i]==2){
 two++; 
}
if (r[i]==3){
 three++; 
}
if (r[i]==4){
 four++; 
}
if (r[i]==5){
 five++; 
}
if (r[i]==6){
 six++; 
}
}

for (int a=0 ; a<one ; a++){
  fill(255);
 rect(10,400-a*10,25,10); 
}
for (int a=0 ; a<two ; a++){
  fill(255);
 rect(50,400-a*10,25,10); 
}
for (int a=0 ; a<three ; a++){
  fill(255);
 rect(90,400-a*10,25,10); 
}
for (int a=0 ; a<four ; a++){
  fill(255);
 rect(130,400-a*10,25,10); 
}
for (int a=0 ; a<five ; a++){
  fill(255);
 rect(170,400-a*10,25,10); 
}
for (int a=0 ; a<six ; a++){
  fill(255);
 rect(210,400-a*10,25,10); 
}
noStroke();
}
