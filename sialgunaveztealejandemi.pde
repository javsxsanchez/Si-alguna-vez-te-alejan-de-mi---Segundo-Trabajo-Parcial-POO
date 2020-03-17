/* Importación de la libreria BOX2D */
import shiffman.box2d.*;
import shiffman.box2d.*; 
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;


/* Definición de pantallas */

Pantalla1 pantalla1;
Pantalla2 pantalla2;
Pantalla3 pantalla3;
Pantalla4 pantalla4;
Verso verso[] = new Verso[23];

PImage renglon[] = new PImage[24];
ArrayList <Verso> versos;
ArrayList <Particula> particulas;
PImage figura;
PImage renglon0;
PImage renglon1;
PImage renglon2;
PImage renglon3;
PImage renglon4;
PImage renglon5;
PImage renglon6;
PImage renglon7;
PImage renglon8;
PImage renglon9;
PImage renglon10;
PImage renglon11;
PImage renglon12;
PImage renglon13;
PImage renglon14;
PImage renglon15;
PImage renglon16;
PImage renglon17;
PImage renglon18;
PImage renglon19;
PImage renglon20;
PImage renglon21;
PImage renglon22;
PImage renglon23;
float activo;
int exit;



Box2DProcessing mundo;
int p = 0;
int nParticulas = 0;

void setup(){
  size(1080,720);
  mundo = new Box2DProcessing (this);
  mundo.createWorld();
  pantalla1 = new Pantalla1();
  pantalla2 = new Pantalla2();
  pantalla3 = new Pantalla3();
  pantalla4 = new Pantalla4();
  versos = new ArrayList <Verso>();
  particulas = new ArrayList <Particula>();
  
  
  
  
  
 
  
  renglon[0] = loadImage("0.png"); 
  renglon[1] = loadImage("1.png"); 
  renglon[2] = loadImage("2.png"); 
  renglon[3] = loadImage("3.png"); 
  renglon[4] = loadImage("4.png"); 
  renglon[5] = loadImage("5.png"); 
  renglon[6] = loadImage("6.png"); 
  renglon[7] = loadImage("7.png"); 
  renglon[8] = loadImage("8.png"); 
  renglon[9] = loadImage("9.png"); 
  renglon[10] = loadImage("10.png"); 
  renglon[11] = loadImage("11.png"); 
  renglon[12] = loadImage("12.png"); 
  renglon[13] = loadImage("13.png"); 
  renglon[14] = loadImage("14.png"); 
  renglon[15] = loadImage("15.png"); 
  renglon[16] = loadImage("16.png"); 
  renglon[17] = loadImage("17.png"); 
  renglon[18] = loadImage("18.png"); 
  renglon[19] = loadImage("19.png"); 
  renglon[20] = loadImage("20.png"); 
  renglon[21] = loadImage("21.png"); 
  renglon[22] = loadImage("22.png"); 
  figura = loadImage("figura.png");



  
  // float x_, floa t y_, float w_, float h_, String frase_
  verso[0] = new Verso(width/2,170,137,137,0);
  verso[1] = new Verso(width/2,270,138,10,1);
  verso[2] = new Verso(width/2,290,147,13,2);
  verso[3] = new Verso(width/2,300,147,13,3);
  verso[4] = new Verso(width/2,310,112,10,4);
  verso[5] = new Verso(width/2,320,118,11,5);
  verso[6] = new Verso(width/2,330,112,13,6);
  verso[7] = new Verso(width/2,340,112,23,7);
  verso[8] = new Verso(width/2,350,119,9,8);
  verso[9] = new Verso(width/2,363,121,14,9);
  verso[10] = new Verso(width/2,375,119,9,10);
  verso[11] = new Verso(width/2,385,168,9,11);
  verso[12] = new Verso(width/2,397,168,9,12);
  verso[13] = new Verso(width/2,410,168,9,13);
  verso[14] = new Verso(width/2,420,178,9,14);
  verso[15] = new Verso(width/2,430,191,18,15);
  verso[16] = new Verso(width/2,445,191,16,16);
  verso[17] = new Verso(width/2,455,205,12,17);
  verso[18] = new Verso(width/2,470,217,24,18);
  verso[19] = new Verso(width/2,490,217,24,19);
  verso[20] = new Verso(width/2,505,232,13,20);
  verso[21] = new Verso(width/2-40,600,47,171,21);
  verso[22] = new Verso(width/2+40,600,47,171,22);

  


   

  
}


/* VOID DRAW */

void draw(){

    mundo.step();

    /* ------ PANTALLAS ------ */
    if(p == 0){
    pantalla1.display();
    }
    
    if(keyCode == ENTER){
    p = 1;
    }
  
  
  if(p == 1){
    pantalla2.display();
    if(key == 'm' || key ==  'M'){
      p = 2;
    }

  }
  
   if(p == 2){
    pantalla3.display();

  }
  
  
  if(p == 3){
    pantalla4.display();
    for(Particula p:particulas){
    p.display();
  }
     if(p == 3){
  
    }
  }
  /* ------ FIN DE PANTALLAS ------- */
println (mouseX +"," + mouseY);



}


/* FIN VOID DRAW */


/* ------- Función mouseClicked -----------*/

void mouseClicked(){

  
 
  
  
  
  
  
  if(p == 2){
       if(mouseX >= 308 && mouseX <= 381){
         if(mouseY >= 345 && mouseY <= 381){
         p = 3;
         nParticulas = 1;
         if(nParticulas == 1){
  for(int i = 0; i <= 10; i++){
  particulas.add(new Particula(20,20));
  i++;
  }
  }
         }
       }
       
       
       if(mouseX >= 498 && mouseX <= 585){
         if(mouseY >= 345 && mouseY <= 381){
           p = 3; 
           nParticulas = 2;
            
  if(nParticulas == 2){
  for(int i = 0; i <= 270; i++){
  particulas.add(new Particula(20,20));
  i++;
  }
  }
         }
       }
       
       
       if(mouseX >= 698 && mouseX <= 779){
         if(mouseY >= 345 && mouseY <= 381){
           p = 3;
           nParticulas = 3;

  if(nParticulas == 3){
  for(int i = 0; i <= 3000; i++){
  particulas.add(new Particula(20,20));
  i++;

  }

  
  
  
  }
  }
    

         }
       }

         
   }
   
   
 
  

  
/* ------- FIN Función mouseClicked -----------*/
