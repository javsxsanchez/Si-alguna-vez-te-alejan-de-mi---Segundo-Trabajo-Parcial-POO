

class Pantalla1{
  
  PFont Helvetica;
  
  
  Pantalla1(){
    Helvetica = loadFont("HelveticaNeue-Light-40.vlw");
    
  }
  
  void display(){
    background(255);
    textFont(Helvetica);
    textAlign(CENTER, CENTER);
    textSize(40);
    fill(0);
    text("Si alguna vez te alejan de mí.",width/2,height/2);
            textSize(20);

        text("Presiona ENTER para continuar.",width/2,height/2+50);


    }
    

  }
  
  

/* ---------------------------------------- */



class Pantalla2{
  
  PFont Helvetica;
  
  
  Pantalla2(){
    Helvetica = loadFont("HelveticaNeue-Light-40.vlw");
    
  }
  
  void display(){
    background(255);
    textFont(Helvetica);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(40);
    text("A Mariana y Elba.",width/2,height/2);
        textSize(20);

            text("Presiona M para continuar.",width/2,height/2+50);

  }
  
  
}


/* --------------------- */



class Pantalla3{
  
  PFont Helvetica;
  
  Pantalla3(){
    Helvetica = loadFont("HelveticaNeue-Light-40.vlw");
    
  }
  
  void display(){
    background(255);
    textFont(Helvetica);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(20);
    text("Da click en una opción para continuar",width/2,height/2 - 50);
    textSize(40);
    
  
   
    fill(0);
    text("Día",width/2 - 200,height/2);
    text("Mes",width/2,height/2);
    text("Año",width/2 + 200,height/2);
    
     if(mouseX >= 308 && mouseX <= 381){
         if(mouseY >= 345 && mouseY <= 381){
         fill(100);
         text("Día",width/2 - 200,height/2);

         }
       }
       
       if(mouseX >= 498 && mouseX <= 585){
         if(mouseY >= 345 && mouseY <= 381){
         fill(100);
          text("Mes",width/2,height/2);

         }
       }
       
       
       if(mouseX >= 698 && mouseX <= 779){
         if(mouseY >= 345 && mouseY <= 381){
         fill(100);
         text("Año",width/2 + 200,height/2);

         }
       }

  }
  
  
}

/* ------------------------------- */


class Pantalla4{
  
  PFont Helvetica;
  
  
  Pantalla4(){
    Helvetica = loadFont("HelveticaNeue-Light-40.vlw");
    
  }
  
  void display(){
    background(255);

      
      // iterar for objeto que pertenece a la colección verso v:verso
      // y método display
      verso[0].display();
      verso[1].display();
      verso[2].display();
      verso[3].display();
      verso[4].display();
      verso[5].display();
      verso[6].display();
      verso[7].display();
      verso[8].display();
      verso[9].display();
      verso[10].display();
      verso[11].display();
      verso[12].display();
      verso[13].display();
      verso[14].display();
      verso[15].display();
      verso[16].display();
      verso[17].display();
      verso[18].display();
      verso[19].display();
      verso[20].display();
      verso[21].display();
      verso[22].display();



    }
    

  }
  
  
