class Particula{
 Body b;
  float w;
  float h;
  
  Particula(float w_, float h_){
    w = w_;
    h = h_;
    
    
    //Crear la definición del cuerpo
    BodyDef bd = new BodyDef(); //Otra clase de Box2D que permite definir el cuerpo BodyDefinition
    Vec2 posicionInicial = new Vec2(random(10,1200), random(-1000,-100)); //Le damos parametros de x y y a un vector
    Vec2 posicionEnMundo = mundo.coordPixelsToWorld(posicionInicial); //Formula para transformar pixeles a metros de Box2D
    bd.position.set(posicionEnMundo); //Definimos la posicion inicial a través de la conversión de la linea de arriba.
    bd.type = BodyType.DYNAMIC; //Definimos el tipo de objeto (conforme a lo que va a hacer) y pueden ser DYNAMIC, STATIC, y KINEMATIC.
    
    //Crear body: solo crea posición y velocidad
    b = mundo.createBody(bd);
    // Dar velocidad inicial: linear, angular, hacer que un objeto no rote
    b.setLinearVelocity(new Vec2(2,0)); 
    b.setAngularVelocity(0.2);
    b.setGravityScale(0.4);
    b.setUserData(this);

    
    // Definir su forma
    PolygonShape ps = new PolygonShape(); //PolygonShape es una clase que nos permite definir formas geométricas
    float ancho = mundo.scalarPixelsToWorld(w_);  //Formula para escalar ancho y alto
    float alto = mundo.scalarPixelsToWorld(h_);
    
    ps.setAsBox(ancho/2, alto/2); // Este constructor recibe el apotema, por eso se debe dividir entre 2, y es para crear una caja
    
    FixtureDef fd = new FixtureDef(); //Define las caracterísitas del objeto 
    fd.shape = ps;
    fd.friction =0.1;
    fd.restitution = 0.3;
    fd.density = 400;
    
    b.createFixture(fd);
  }
  
  void display(){
    
    Vec2 posicion = mundo.getBodyPixelCoord(b); //Permite preguntarle a Body cuáles son los valores de x y y
    pushMatrix();
      translate(posicion.x, posicion.y);
      ellipseMode(CENTER);
      fill(255,0,0);
      noStroke();
      ellipse(0,0,w,h);
      
    popMatrix();
    //rect(x,y,w,h);
    
    
    if(posicion.y > height+500){
    exit();
    }

  }


 

}
